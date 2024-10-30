import '../../../../../core/common/shared/shared_imports.dart'; // Import shared utilities

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        final responsive = ResponsiveUtils(context);

        return Center(
          child: SizedBox(
            width: responsive.setWidth(55),
            child: Stack(
              children: [
                MaterialButton(
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
                      image: context.read<SignUpBloc>().profileImage,
                    ),
                  ),
                ),
                context.read<SignUpBloc>().profileImage.path.isEmpty
                    ? const SizedBox()
                    : Positioned(
                        right: 20,
                        bottom: 0,
                        child: DottedBorder(
                          color: Colors.grey.shade400,
                          dashPattern: const [5, 4],
                          strokeWidth: 2,
                          borderType: BorderType.RRect,
                          radius:
                              Radius.circular(responsive.setBorderRadius(10)),
                          child: Container(
                            height: responsive.setHeight(4),
                            width: responsive.setWidth(9),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(
                                  responsive.setBorderRadius(10)),
                            ),
                            child: InkWell(
                              onTap: () {
                                context
                                    .read<SignUpBloc>()
                                    .add(const SignUpEvent.removeImageEvent());
                              },
                              child: Icon(
                                IconlyBold.delete,
                                color: ColorManger.white,
                                size: responsive.setIconSize(4),
                              ),
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
