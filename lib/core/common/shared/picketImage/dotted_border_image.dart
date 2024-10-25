import 'package:driver/core/common/shared/shared_imports.dart';

class DottedBorderImage extends StatelessWidget {
  final File? image;
  final bool isRegisterComplete;
  const DottedBorderImage({
    super.key,
    this.image,
    this.isRegisterComplete = false,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(responsive.setBorderRadius(2)),
      dashPattern: const [6, 3],
      color: image != null && image!.path.isNotEmpty
          ? ColorManger.brunLight
          : ColorManger.brownLight,
      strokeWidth: 2,
      child: SizedBox(
        height: responsive.setHeight(isRegisterComplete ? 15 : 13),
        width: isRegisterComplete ? double.infinity : responsive.setWidth(30),
        child: image != null && image!.path.isNotEmpty
            ? Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                      Radius.circular(responsive.setBorderRadius(2.5))),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: FileImage(image!)),
                ),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    IconlyBold.camera,
                    color: Colors.grey,
                    size: responsive.setIconSize(13),
                  ),
                  responsive.setSizeBox(height: isRegisterComplete ? 1.5 : 0.5),
                  Text(context.translate(AppStrings.uploadProfilePicture),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: responsive
                                .setTextSize(isRegisterComplete ? 3 : 3.4),
                          ))
                ],
              ),
      ),
    );
  }
}
