import '../../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class CustomMapMarkerWidget extends StatelessWidget {
  final bool driver;
  final bool isLinePoint;
  final bool isSmallPoint;

  const CustomMapMarkerWidget({
    super.key,
    this.driver = false,
    this.isLinePoint = false,
    this.isSmallPoint = false,
  });

  @override
  @override
  Widget build(BuildContext context) {
    return isLinePoint == true
        ? CircleAvatar(
            backgroundColor: ColorManger.white,
            maxRadius: isSmallPoint==true?5: 8,
            child:  CircleAvatar(
              maxRadius: isSmallPoint==true?3:6,
              backgroundColor: Colors.orange,
            ),
          )
        : Image(
            image: AssetImage(
              driver ? ImageAsset.deliveryMan : ImageAsset.tracking,
            ),
            height: 50.h,
            width: 50.w,
          );
  }
}
