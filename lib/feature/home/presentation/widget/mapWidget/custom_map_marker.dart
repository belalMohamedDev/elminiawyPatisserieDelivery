
import '../../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class TextOnImage extends StatelessWidget {
  final bool currentLocation;
  const TextOnImage({
    super.key,
    this.currentLocation = false,
  });

  @override
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(
        currentLocation ? ImageAsset.pickMarker : ImageAsset.storeLocation,
      ),
      height:  50.h ,
      width:  50.w,
    );
  }
}
