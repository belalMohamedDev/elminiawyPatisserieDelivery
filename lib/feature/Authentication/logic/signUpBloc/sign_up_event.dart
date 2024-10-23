part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.started() = _Started;
  const factory SignUpEvent.userSignUpEmailAddress(String value) = UserSignUpEmailAddressEvent;
  const factory SignUpEvent.userSignUpPassword(String value) = UserSignUpPasswordEvent;
  const factory SignUpEvent.userSignUpFirstName(String value) = UserSignUFirstNameEvent;
  const factory SignUpEvent.userSignUpLastName(String value) = UserSignUpLastNameEvent;
  const factory SignUpEvent.userSignUpPhone(String value) = UserSignUpPhoneEvent;
  const factory SignUpEvent.userSignUpCountryCode(String value) = UserSignUpCountryCodeEvent;
  const factory SignUpEvent.userSignUpAgreeWith(bool? value) = UserSignUpAgreeWithEvent;
  const factory SignUpEvent.userShowSignUpPassword() = UserShowSignUpPasswordEvent;
  const factory SignUpEvent.userRegisterButton() = UserRegisterButtonEvent;
  const factory SignUpEvent.cameraImagePickEvent() = CameraImagePickEvent;
  const factory SignUpEvent.galleryImagePickEvent() = GalleryImagePickEvent;

}