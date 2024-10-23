
import '../../../../../core/common/shared/shared_imports.dart'; //


abstract class UserAddressRepository {
  Future<ApiResult<CreateAddressResponse>> createANewAddress(
      CreateAddressRequestBody createAddressRequestBody);

  Future<ApiResult<GetAddressResponse>> getAllAddress();

  Future<ApiResult<CreateAddressResponse>> updateAddress(
      String id, CreateAddressRequestBody createAddressRequestBody);

  Future<ApiResult<ApiSuccessGeneralModel>> removeAddress(String id);

  Future<ApiResult<CheckLocationAvailableResponse>> checkAddressAvailable(
      CheckAddressAvailableRequestBody checkAddressAvailableRequestBody);
}

class UserAddressRepositoryImplement implements UserAddressRepository {
  UserAddressRepositoryImplement(this._apiService);
  final AppServiceClient _apiService;


  @override
  Future<ApiResult<CreateAddressResponse>> createANewAddress(
      CreateAddressRequestBody createAddressRequestBody) async {
    
      try {
        final response = await _apiService.createAddress(
          createAddressRequestBody.toFilteredJson(),
        );
        return ApiResult.success(response);
      } catch (error) {
        return ApiResult.failure(ApiErrorHandler.handle(error));
      }
    }
  

  @override
  Future<ApiResult<GetAddressResponse>> getAllAddress() async {
   
      try {
        final response = await _apiService.getAllAddress();
        return ApiResult.success(response);
      } catch (error) {
        return ApiResult.failure(ApiErrorHandler.handle(error));
      }
   
  }

  @override
  Future<ApiResult<ApiSuccessGeneralModel>> removeAddress(String id) async {
 
      try {
        final response = await _apiService.deleteAddress(id);
        return ApiResult.success(response);
      } catch (error) {
        return ApiResult.failure(ApiErrorHandler.handle(error));
      }
   
  }

  @override
  Future<ApiResult<CreateAddressResponse>> updateAddress(
      String id, CreateAddressRequestBody createAddressRequestBody) async {
   
      try {
        final response = await _apiService.updateAddress(
            id, createAddressRequestBody.toFilteredJson());
        return ApiResult.success(response);
      } catch (error) {
        return ApiResult.failure(ApiErrorHandler.handle(error));
      }
  
  }

  @override
  Future<ApiResult<CheckLocationAvailableResponse>> checkAddressAvailable(
      CheckAddressAvailableRequestBody checkAddressAvailableRequestBody) async {
   
      try {
        final response = await _apiService
            .checkAddressAvaliableService(checkAddressAvailableRequestBody);
        return ApiResult.success(response);
      } catch (error) {
        return ApiResult.failure(ApiErrorHandler.handle(error));
      }
    } 
  }

