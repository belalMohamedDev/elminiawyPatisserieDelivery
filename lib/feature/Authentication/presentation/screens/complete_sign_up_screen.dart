import 'package:driver/core/common/shared/shared_imports.dart';

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
  final List<String> idTypes = ['Passport', 'National ID', 'Driving license'];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);
    File? image;

    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: responsive.setHeight(18),
        child: Padding(
          padding: responsive.setPadding(left: 4, right: 4),
          child: Column(
            children: [
              CheckboxListTile(
                title: const Text('I agree with all the Terms & Conditions'),
                value: agreedToTerms,
                onChanged: (bool? value) {
                  setState(() {
                    agreedToTerms = value ?? false;
                  });
                },
              ),
              responsive.setSizeBox(height: 1),
              CustomButton(
                onPressed: agreedToTerms
                    ? () {
                        // Action on submit
                      }
                    : null,
                defaultText: "Submit",
              ),
            ],
          ),
        ),
      ),
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
              responsive.setSizeBox(height: 1),

              CustomDropdownButtonFormField(
                items: idTypes,
                value: 'Select ID type',
                onChanged: (value) {
                  setState(() {
                    idType = value;
                  });
                },
              ),

              responsive.setSizeBox(height: 1),

              CustomDropdownButtonFormField(
                items: idTypes,
                value: 'Select vehicle type',
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
                  hintText: 'Ex: XXX-X-XXX-XXX-XXXX', // Example format
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [
                  CustomMaskFormatter(mask: '###-#-###-###-####'),
                ],
              ),
              const SizedBox(height: 16.0),

              BlocBuilder<CompleteRegistrationProcessCubit,
                  CompleteRegistrationProcessState>(
                builder: (context, state) {
                  state.whenOrNull(
                    imagePath: (imagePath) {
                      image = imagePath;
                    },
                  );
                  return MaterialButton(
                    onPressed: () => showPicker(
                      context: context,
                      listTileCamera: () {
                        context
                            .read<CompleteRegistrationProcessCubit>()
                            .camera();
                        // .add(const SignUpEvent.cameraImagePickEvent());
                        Navigator.of(context).pop();
                      },
                      listTileGallery: () {
                        context
                            .read<CompleteRegistrationProcessCubit>()
                            .gallery();
                        // .add(const SignUpEvent.galleryImagePickEvent());

                        Navigator.of(context).pop();
                      },
                    ),
                    child: DottedBorderImage(
                      isRegisterComplete: true,
                      image: image,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
