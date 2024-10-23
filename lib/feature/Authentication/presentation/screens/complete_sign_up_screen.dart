import 'package:driver/core/common/shared/shared_imports.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class DeliveryManRegistration extends StatefulWidget {
  const DeliveryManRegistration({super.key});

  @override
  _DeliveryManRegistrationState createState() =>
      _DeliveryManRegistrationState();
}

class _DeliveryManRegistrationState extends State<DeliveryManRegistration> {
  String? deliveryType;
  String? idType;
  bool agreedToTerms = false;

  final List<String> deliveryTypes = ['Freelancer', 'Salary Based'];
  final List<String> idTypes = ['Passport', 'National ID'];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);
    return Scaffold(
      body: Padding(
        padding: responsive.setPadding(top: 8, right: 4, left: 4),
        child: Form(
          child: ListView(
            children: [
              // Display the "Create Account" title
              const HeadlineTextAuthScreen(
                titleText: 'Registration Process',
                subTitleText: AppStrings.fillYouInformation,
              ),

              responsive.setSizeBox(height: 3),

              Row(
                children: [
                  Expanded(
                      child: DropdownButtonFormField2(
                    decoration: const InputDecoration(
                      labelText: 'Select delivery type',
                      border: OutlineInputBorder(),
                    ),
                    isExpanded: true,
                    dropdownStyleData: DropdownStyleData(
                        useSafeArea: true,
                        decoration: BoxDecoration(
                          color: ColorManger.white,
                        )),
                   

                    // dropdownDirection: DropdownDirection
                    //     .bottom, // تحديد اتجاه الفتح للأسفل دائمًا
                    items: deliveryTypes
                        .map((String type) => DropdownMenuItem<String>(
                              value: type,
                              child: Text(type),
                            ))
                        .toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue = newValue;
                      });
                    },
                    // // تخصيص القائمة المنسدلة إذا كنت بحاجة
                    // buttonHeight: 60,
                    // dropdownMaxHeight: 200,
                    // dropdownWidth: MediaQuery.of(context).size.width * 0.9,
                  )),
                  responsive.setSizeBox(width: 5),
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      value: deliveryType,
                      decoration: const InputDecoration(
                        labelText: 'Select delivery type',
                        border: OutlineInputBorder(),
                      ),
                      items: deliveryTypes
                          .map((type) => DropdownMenuItem(
                                value: type,
                                child: Text(type),
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          deliveryType = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                value: idType,
                decoration: const InputDecoration(
                  labelText: 'Select ID type',
                  border: OutlineInputBorder(),
                ),
                items: idTypes
                    .map((type) => DropdownMenuItem(
                          value: type,
                          child: Text(type),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    idType = value;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Enter your ID number',
                  border: OutlineInputBorder(),
                  hintText: 'Ex: XXXXX-XXXXXXXX-X',
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  // Action to upload image
                },
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Center(
                    child: Icon(Icons.camera_alt),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              CheckboxListTile(
                title: const Text('I agree with all the Terms & Conditions'),
                value: agreedToTerms,
                onChanged: (bool? value) {
                  setState(() {
                    agreedToTerms = value ?? false;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: agreedToTerms
                    ? () {
                        // Action on submit
                      }
                    : null,
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
