import 'package:driver/core/common/shared/shared_imports.dart';

class DeliveryManRegistration extends StatefulWidget {
  const DeliveryManRegistration({super.key});

  @override
  State<DeliveryManRegistration> createState() =>
      _DeliveryManRegistrationState();
}

class _DeliveryManRegistrationState extends State<DeliveryManRegistration> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    if (context.read<CompleteRegistrationProcessCubit>().regionValues.isEmpty) {
      context.read<CompleteRegistrationProcessCubit>().getAllRegionsRequest();
    }
    super.initState();
  }

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
    final completeRegistrationProcessCubit =
        context.read<CompleteRegistrationProcessCubit>();

    return BlocListener<CompleteRegistrationProcessCubit,
        CompleteRegistrationProcessState>(
      listener: (context, state) async {
        if (state is GetAllRegionError) {
          context
              .read<CompleteRegistrationProcessCubit>()
              .getAllRegionsRequest();
        } else if (state is CompleteRegisterSuccess) {
          await AppLogout().logOutThenNavigateToLogin();
          // Show a success toast when login is successful
          ShowToast.showToastSuccessTop(
              message: state.data.message!, context: context);

          SharedPrefHelper.removeData(PrefKeys.prefsCompleteRgister);
        } else if (state is CompleteRegisterError) {
          // Show a success toast when login is successful
          ShowToast.showToastErrorTop(
              errorMessage: state.apiErrorModel.message!, context: context);
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Padding(
            padding:
                responsive.setPadding(top: 10, right: 4, left: 4, bottom: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeadlineTextAuthScreen(
                  titleText: AppStrings.registrationProcess,
                  subTitleText: AppStrings.fillYouInformation,
                ),
                responsive.setSizeBox(height: 3),
                Row(
                  children: [
                    Expanded(
                      child: CustomDropdownButtonFormField(
                        items: const ["freelancer", "salaryBased"],
                        value: AppStrings.selectDeliveryType,
                        onChanged: (value) {
                          completeRegistrationProcessCubit
                              .setDeliveryType(value!);
                        },
                      ),
                    ),
                    responsive.setSizeBox(width: 2),
                    BlocBuilder<CompleteRegistrationProcessCubit,
                        CompleteRegistrationProcessState>(
                      builder: (context, state) {
                        if (state is GetAllRegionError ||
                            state is GetAllRegionLoading) {
                          return const CircularProgressIndicator();
                        }
                        return Expanded(
                          child: CustomDropdownButtonFormField(
                            items:
                                completeRegistrationProcessCubit.regionValues,
                            value: AppStrings.selectRegion,
                            onChanged: (value) {
                              completeRegistrationProcessCubit
                                  .setDeliveryRegion(value!);
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
                responsive.setSizeBox(height: 1),
                CustomDropdownButtonFormField(
                  items: const [
                    "car",
                    "withOutAVehicle",
                    "bicycle",
                    "motorcycle"
                  ],
                  value: AppStrings.selectVehicleType,
                  onChanged: (value) {
                    completeRegistrationProcessCubit
                        .setDeliveryTypeOfTheVehicle(value!);
                  },
                ),
                responsive.setSizeBox(height: 1),
                TextFormField(
                  controller:
                      completeRegistrationProcessCubit.deliveryNationalId,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: AppStrings.pleaseEnterNationalId,
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
                    final images = completeRegistrationProcessCubit.images;

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
                                        .read<
                                            CompleteRegistrationProcessCubit>()
                                        .pickImage(ImageSource.camera);
                                    Navigator.of(context).pop();
                                    _scrollToBottom();
                                  },
                                  listTileGallery: () async {
                                    await context
                                        .read<
                                            CompleteRegistrationProcessCubit>()
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
                BlocBuilder<CompleteRegistrationProcessCubit,
                    CompleteRegistrationProcessState>(
                  builder: (context, state) {
                    return Align(
                      alignment: Alignment.bottomCenter,
                      child: CustomButton(
                        onPressed:
                            completeRegistrationProcessCubit.isDataVaildation()
                                ? () {
                                    completeRegistrationProcessCubit
                                        .sendCompleteRegisterRequest();
                                  }
                                : null,
                        widget: LoadingButtonContent(
                          defaultText: AppStrings.submit,
                          state: state,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
