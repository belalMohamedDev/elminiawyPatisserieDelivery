import 'package:driver/core/common/shared/shared_imports.dart';
import 'package:driver/core/common/sharedWidget/custom_dropdown_button_form_field.dart';

class DeliveryManRegistration extends StatefulWidget {
  const DeliveryManRegistration({super.key});

  @override
  State<DeliveryManRegistration> createState() =>
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
                    child: CustomDropdownButtonFormField(
                      items: deliveryTypes,
                      value: 'Select Delivery type',
                      onChanged: (value) {
                        setState(() {
                          deliveryType = value;
                        });
                      },
                    ),
                  ),
                  responsive.setSizeBox(width: 2),
                  Expanded(
                    child: CustomDropdownButtonFormField(
                      items: deliveryTypes,
                      value: 'Select Region',
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

              CustomDropdownButtonFormField(
                items: idTypes,
                value: 'Select ID type',
                onChanged: (value) {
                  setState(() {
                    idType = value;
                  });
                },
              ),

              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
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
