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
  final ScrollController _scrollController = ScrollController();

  final List<String> deliveryTypes = ['Freelancer', 'Salary Based'];
  final List<String> deliveryregion = ['fakous'];
  final List<String> idTypes = ['Passport', 'National ID', 'Driving license'];
  String? selectedValue;

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);

    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: responsive.setPadding(top: 10, right: 4, left: 4, bottom: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                      items: deliveryregion,
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
                value: 'Select vehicle type',
                onChanged: (value) {
                  setState(() {
                    idType = value;
                  });
                },
              ),
              responsive.setSizeBox(height: 1),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ex: XXX-X-XXX-XXX-XXXX',
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
                  final images =
                      context.read<CompleteRegistrationProcessCubit>().images;

                  return Column(
                    children: [
                      Wrap(
                        alignment: WrapAlignment.start,
                        spacing: 8.0,
                        runSpacing: 8.0,
                        children: [
                          ...images.asMap().entries.map((entry) {
                            int index = entry.key;
                            File image = entry.value;

                            return Stack(
                              children: [
                                DottedBorderImage(
                                  isRegisterComplete: true,
                                  image: image,
                                ),
                                Positioned(
                                  right: 0,
                                  child: IconButton(
                                    onPressed: () {
                                      context
                                          .read<
                                              CompleteRegistrationProcessCubit>()
                                          .removeImage(index);
                                      _scrollToBottom();
                                    },
                                    icon: Icon(
                                      IconlyBold.delete,
                                      color: ColorManger.redError,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }),
                          InkWell(
                            onTap: () {
                              showPicker(
                                context: context,
                                listTileCamera: () async {
                                  await context
                                      .read<CompleteRegistrationProcessCubit>()
                                      .pickImage(ImageSource.camera);
                                  Navigator.of(context).pop();
                                  _scrollToBottom();
                                },
                                listTileGallery: () async {
                                  await context
                                      .read<CompleteRegistrationProcessCubit>()
                                      .pickImage(ImageSource.gallery);
                                  Navigator.of(context).pop();
                                  _scrollToBottom();
                                },
                              );
                            },
                            child: const DottedBorderImage(
                                isRegisterComplete: true),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
              responsive.setSizeBox(height: 3),
              Align(
                alignment: Alignment.bottomCenter,
                child: CustomButton(
                  onPressed: agreedToTerms
                      ? () {
                          // Action on submit
                        }
                      : null,
                  defaultText: "Submit",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
