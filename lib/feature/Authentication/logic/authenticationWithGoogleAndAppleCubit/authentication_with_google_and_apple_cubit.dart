import '../../../../../core/common/shared/shared_imports.dart';

part 'authentication_with_google_and_apple_state.dart';
part 'authentication_with_google_and_apple_cubit.freezed.dart';

class AuthenticationWithGoogleAndAppleCubit
    extends Cubit<AuthenticationWithGoogleAndAppleState> {
  AuthenticationWithGoogleAndAppleCubit(this._authenticationRepository)
      : super(const AuthenticationWithGoogleAndAppleState.initial());

  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final AuthenticationRepositoryImplement _authenticationRepository;

  Future<User?> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    if (googleUser != null) {
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final UserCredential userCredential =
          await _auth.signInWithCredential(credential);
      final User? user = userCredential.user;

      if (user != null) {
        final String? name = user.displayName;
        final String? email = user.email;
        final String? phone = user.phoneNumber;
        await signInWithGoogleFetchWithApi(email, name, phone);
      }

      return user;
    }
    return null;
  }

  Future<void> signOut() async {
    final User? user = FirebaseAuth.instance.currentUser;
   
    if (user != null) {
       // Sign out from Firebase
      await FirebaseAuth.instance.signOut();

      // Sign out from Google
      await _googleSignIn.signOut();
    }
  }

  Future<void> signInWithGoogleFetchWithApi(
      String? email, String? name, String? phone) async {
    emit(const AuthenticationWithGoogleAndAppleState
        .authenticationWithGoogleLoading());

    final response =
        await _authenticationRepository.authenticationWithGoogleRepo(
            RegisterRequestBody(email: email, name: name, phone: phone));

    response.when(
      success: (dataResponse) {
        emit(AuthenticationWithGoogleAndAppleState
            .authenticationWithGoogleSuccess(dataResponse));
      },
      failure: (error) async {
        emit(
          AuthenticationWithGoogleAndAppleState.authenticationWithGoogleError(
              error),
        );
      },
    );
  }
}
