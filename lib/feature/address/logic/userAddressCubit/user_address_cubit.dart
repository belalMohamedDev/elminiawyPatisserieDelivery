import '../../../../../core/common/shared/shared_imports.dart'; //

part 'user_address_state.dart';
part 'user_address_cubit.freezed.dart';

class UserAddressCubit extends Cubit<UserAddressState> {
  UserAddressCubit(this._userAddressRepository)
      : super(const UserAddressState.initial());

  final UserAddressRepositoryImplement _userAddressRepository;

  final TextEditingController buildingNameController = TextEditingController();
  final TextEditingController companyController = TextEditingController();
  final TextEditingController floorController = TextEditingController();
  final TextEditingController streetController = TextEditingController();
  final TextEditingController additionalDirectionsContoller =
      TextEditingController();
  final TextEditingController phoneNumberContoller = TextEditingController();
  final TextEditingController addressLabel = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool isPaymentAddress = false;

  List<GetAddressResponseData> addressDataList = [];

  int regionAreaIndex = 0;
  String aliasData = "Apartment";
  List<Map<String, dynamic>> regionArea = [
    {
      "imagePath": ImageAsset.building,
      "textEn": "Apartment",
      "textAr": "شقة",
    },
    {
      "imagePath": ImageAsset.home,
      "textEn": "House",
      "textAr": "منزل",
    },
    {
      "imagePath": ImageAsset.bag,
      "textEn": "Office",
      "textAr": "مكتب",
    },
  ];

  void updateAddressAreaInformation(
      String newInfo, LatLng latLng, List<MarkerData> markData) {
    emit(UserAddressState.updateAddressRegion(
      message: newInfo,
      markData: markData,
      latLng: latLng,
    ));
  }

  void clearAllControllers() {
    buildingNameController.clear();
    companyController.clear();
    floorController.clear();
    streetController.clear();
    additionalDirectionsContoller.clear();
    phoneNumberContoller.clear();
    addressLabel.clear();
  }

  void changeRegionAreaIndex({required int index, required String alias}) {
    regionAreaIndex = index;
    aliasData = alias;

    emit(UserAddressState.changeRegionAreaIndex(regionAreaIndex, aliasData));
  }

  Future<void> getUserAddress() async {
    emit(const UserAddressState.getAllAddressLoading());

    final response = await _userAddressRepository.getAllAddress();

    response.when(
      success: (dataResponse) {
        if (dataResponse.data!.isNotEmpty) {
          addressDataList = [];
          addressDataList.addAll(dataResponse.data!);
        }
        emit(UserAddressState.getAllAddressSuccess(dataResponse));
      },
      failure: (error) {
        if (error.statusCode != 401) {
          emit(
            UserAddressState.getAllAddressError(error),
          );
        }
      },
    );
  }

  Future<void> deleteUserAddress(String addressId) async {
    emit(const UserAddressState.removeAddressLoading());

    final response = await _userAddressRepository.removeAddress(addressId);

    response.when(
      success: (dataResponse) {
        addressDataList.removeWhere((address) => address.sId == addressId);

        emit(UserAddressState.removeAddressSuccess(dataResponse));
      },
      failure: (error) {
        if (error.statusCode != 401) {
          emit(
            UserAddressState.removeAddressError(error),
          );
        }
      },
    );
  }

  Future<void> addNewAddress(
      {required String arRegion,
      required String enRegion,
      required String latitude,
      required String longitude,
      required String nearbyStoreAddress}) async {
    emit(const UserAddressState.createNewAddressLoading());

    final createAddressRequestBody = createAddressRequest(
        arRegion: arRegion,
        enRegion: enRegion,
        latitude: latitude,
        longitude: longitude,
        nearbyStoreAddress: nearbyStoreAddress);

    final response = await _userAddressRepository
        .createANewAddress(createAddressRequestBody);

    response.when(
      success: (dataResponse) {
        if (dataResponse.data != null) {
          addressDataList.add(toGetAddressResponseData(dataResponse.data!));
        }

        emit(UserAddressState.createNewAddressSuccess(dataResponse));
      },
      failure: (error) {
        if (error.statusCode != 401) {
          emit(
            UserAddressState.createNewAddressError(error),
          );
        }
      },
    );
  }

  CreateAddressRequestBody createAddressRequest({
    String? arRegion,
    String? enRegion,
    String? latitude,
    String? longitude,
    String? nearbyStoreAddress,
    String? alias,
  }) {
    return CreateAddressRequestBody(
      additionalDirections: additionalDirectionsContoller.text.getOrNull(),
      alias: aliasData.getOrNull(),
      buildingName: buildingNameController.text.getOrNull(),
      apartmentNumber: companyController.text.getOrNull(),
      floor: floorController.text.getOrNull(),
      region: {
        'en': enRegion ?? "", 
        'ar': arRegion ?? "",
      },
      streetName: streetController.text.getOrNull(),
      phone: phoneNumberContoller.text.getOrNull(),
      addressLabel: addressLabel.text.getOrNull(),
      latitude: latitude ?? '',
      longitude: longitude ?? "",
      nearbyStoreAddress: nearbyStoreAddress ?? "",
    );
  }

  GetAddressResponseData toGetAddressResponseData(CreateAddressData data) {
    return GetAddressResponseData(
      sId: data.sId,
      alias: data.alias,
      buildingName: data.buildingName,
      apartmentNumber: data.apartmentNumber,
      floor: data.floor,
      region: data.region,
      additionalDirections: data.additionalDirections,
      streetName: data.streetName,
      phone: data.phone,
      addressLabel: data.addressLabel,
      location: GetAddressResponseLocation(
        type: data.location!.type,
        coordinates: data.location!.coordinates,
      ),
    );
  }

  Future<void> updateAddress(
      {required String id,
      required String arRegion,
      required String enRegion,
      required String latitude,
      required String longitude,
      required String nearbyStoreAddress}) async {
    emit(const UserAddressState.updateAddressLoading());

    final createAddressRequestBody = createAddressRequest(
        arRegion: arRegion,
        enRegion: enRegion,
        latitude: latitude,
        longitude: longitude,
        nearbyStoreAddress: nearbyStoreAddress);

    final response = await _userAddressRepository.updateAddress(
        id, createAddressRequestBody);

    response.when(
      success: (dataResponse) {
        // Create a new list to avoid modifying the original list during iteration
        final updatedAddressList = addressDataList.map((address) {
          if (address.sId == id) {
            // Replace the updated address
            return toGetAddressResponseData(dataResponse.data!);
          }
          return address;
        }).toList();

        // Update the original list with the new modified list
        addressDataList = updatedAddressList;

        emit(UserAddressState.updateAddressSuccess(dataResponse));
      },
      failure: (error) {
        if (error.statusCode != 401) {
          emit(
            UserAddressState.updateAddressError(error),
          );
        }
      },
    );
  }
}
