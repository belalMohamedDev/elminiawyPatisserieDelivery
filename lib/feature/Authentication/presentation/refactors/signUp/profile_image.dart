import '../../../../../core/common/shared/shared_imports.dart'; // Import shared utilities

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    File? image;
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        state.whenOrNull(
          imagePath: (imagePath) {
            image = imagePath;
          },
        );
        return MaterialButton(
            onPressed: () => showPicker(
                  context: context,
                  listTileCamera: () {
                    context
                        .read<SignUpBloc>()
                        .add(const SignUpEvent.cameraImagePickEvent());
                    Navigator.of(context).pop();
                  },
                  listTileGallery: () {
                    context
                        .read<SignUpBloc>()
                        .add(const SignUpEvent.galleryImagePickEvent());

                    Navigator.of(context).pop();
                  },
                ),
            child: Center(
              child: DottedBorderImage(
                image: image,
              ),
            ));
      },
    );
  }
}
