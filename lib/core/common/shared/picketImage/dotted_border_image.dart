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
      radius: Radius.circular(responsive.setBorderRadius(3)),
      dashPattern: const [6, 3],
      color: image != null && image!.path.isNotEmpty
          ? ColorManger.redError
          : ColorManger.brownLight,
      strokeWidth: 2,
      child: SizedBox(
        height: responsive.setHeight(13),
        width: isRegisterComplete ? double.infinity : responsive.setWidth(35),
        child: image != null && image!.path.isNotEmpty
            ? Padding(
                padding: responsive.setPadding(
                    top: 0.3, bottom: 0.3, left: 0.8, right: 0.8),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(responsive.setBorderRadius(3))),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: FileImage(image!)),
                  ),
                ),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    IconlyBold.camera,
                    color: Colors.grey.shade500,
                    size: responsive.setIconSize(isRegisterComplete ? 13 : 10),
                  ),
                  responsive.setSizeBox(height: 1.5),
                  Text(context.translate(AppStrings.uploadProfilePicture),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: responsive.setTextSize(3),
                          ))
                ],
              ),
      ),
    );
  }
}
