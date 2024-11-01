import 'package:driver/core/common/shared/shared_imports.dart';

Future<dynamic> showPicker(
    {required BuildContext context,
    required VoidCallback listTileGallery,
    required VoidCallback listTileCamera}) {
  return showModalBottomSheet(
    backgroundColor: ColorManger.white,
    context: context,
    useRootNavigator: true,
    builder: (BuildContext context) {
      return SafeArea(
        child: Container(
          color: ColorManger.white,
          height: 150.h,
          child: Padding(
            padding: EdgeInsets.only(top: 25.h),
            child: Wrap(
              children: [
                ListTile(
                  trailing: const Icon(Icons.arrow_forward),
                  leading: const Icon(Icons.photo),
                  title: Text(context.translate(AppStrings.photoGallery)),
                  onTap: listTileGallery,
                ),
                ListTile(
                  trailing: const Icon(Icons.arrow_forward),
                  leading: const Icon(Icons.camera_alt_rounded),
                  title: Text(context.translate(AppStrings.photoCamera)),
                  onTap: listTileCamera,
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
