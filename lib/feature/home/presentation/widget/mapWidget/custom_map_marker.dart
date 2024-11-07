
import '../../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class TextOnImage extends StatelessWidget {
  final bool driver;
  const TextOnImage({
    super.key,
    this.driver = false,
  });

  @override
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(
        driver ? ImageAsset.deliveryMan : ImageAsset.tracking,
      ),
      height:  50.h ,
      width:  50.w,
    );
  }
}
