

import '../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class AddNewAddressBody extends StatelessWidget {
  final GetAddressResponseData? getAddressResponseData;


  const AddNewAddressBody({
    super.key,
    this.getAddressResponseData,

  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const NewAddressGoogleMapWidget(),
            SizedBox(
              height: 10.h,
            ),
            InformationCardArea(getAddressResponseData: getAddressResponseData),
            SizedBox(
              height: 15.h,
            ),
           const ChooceRegionAreaFromToggel(),
            SizedBox(
              height: 15.h,
            ),
            AddAddressInformationFromTextFormField(
           
                getAddressResponseData: getAddressResponseData),
          ],
        ),
      ),
    );
  }



 


 
}

