import 'package:retrofit/retrofit.dart';

import '../../../../../core/common/shared/shared_imports.dart'; //

part 'app_api.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @POST(ApiConstants.login)
  Future<AuthResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @GET(ApiConstants.storeRegions)
  Future<GetAllRegionsRsponse> getStoreRegionsService();

  @POST(ApiConstants.signup)
  @MultiPart()
  Future<AuthResponse> registerService(
    @Part() String? name,
    @Part() String? email,
    @Part() String? password,
    @Part() String? phone,
    @Part() String role,
    @Part() File image,
  );

  @POST(ApiConstants.completeRgister)
  @MultiPart()
  Future<CompleteRegisterResponse> completeRegisterService(
    @Part() String? nationalId,
    @Part() String? typeOfTheVehicle,
    @Part() String? deliveryType,
    @Part() String? region,
    @Part() List<File> images,
  );

  @POST(ApiConstants.getOrders)
  Future<GetAllOrderResponse> getAllOrderService(
    @Field("latitude") String latitude,
    @Field("longitude") String longitude,
  );



  @GET(ApiConstants.getDeliveredOrder)
  Future<GetAllOrderResponse> getDeliveredOrderService();

  @GET(ApiConstants.getCancelledOrder)
  Future<GetAllOrderResponse> getCancelledOrderService();

  @GET(ApiConstants.getAcceptedDeliveredOrder)
  Future<GetAllOrderResponse> getAcceptedDeliveredOrderService();




  @PUT('${ApiConstants.driver}/{orderId}/accept')
  Future<OrderAcceptResponse> acceptOrderService(
    @Path("orderId") String orderId,
  );

  @DELETE('${ApiConstants.driver}/{orderId}/canceledOrder')
  Future<ApiSuccessGeneralModel> canceledOrderService(
    @Path("orderId") String orderId,
  );

  @PUT(ApiConstants.updateDeliveryImage)
  @MultiPart()
  Future<AuthResponse> updateDeliveryImageService(
    @Part() File image,
  );

  @POST(ApiConstants.forgetPassword)
  Future<ApiSuccessGeneralModel> forgetPassword(
    @Body() ForgetPasswordRequestBody forgetPasswordRequestBody,
  );

  @POST(ApiConstants.verifyCode)
  Future<ApiSuccessGeneralModel> verifyCode(
    @Body() VerifyCodeRequestBody verifyCodeRequestBody,
  );

  @PUT(ApiConstants.resetPassword)
  Future<AuthResponse> newPassword(
    @Body() NewPasswordRequestBody newPasswordRequestBody,
  );

  @POST(ApiConstants.logOut)
  Future<ApiSuccessGeneralModel> logOut(
    @Field("refreshToken") String refreshToken,
  );

  @DELETE('${ApiConstants.address}/{id}')
  Future<ApiSuccessGeneralModel> deleteAddress(
    @Path("id") String id,
  );

  @PUT(ApiConstants.updateMyData)
  Future<AuthResponse> updateMyData(
    @Body()
    UpdateAccountInformationRequestBody updateAccountInformationRequestBody,
  );

  @PUT(ApiConstants.updateMyEmailAddress)
  Future<AuthResponse> updateMyEmailAddress(
    @Body() ChangeEmailRequestBody changeEmailRequestBody,
  );

  @PUT(ApiConstants.updateMyPassword)
  Future<AuthResponse> updateMyPasswordService(
    @Body() ChangeMyPasswordRequestBody changeMyPasswordRequestBody,
  );

  @DELETE(ApiConstants.deleteMyAccount)
  Future<ApiSuccessGeneralModel> deleteMyAccountService();

  @GET('${ApiConstants.notification}/user')
  Future<UserNotificationResponse> getAllNotificationToUserService();

  @PUT('${ApiConstants.notification}/user/seen')
  Future<UserNotificationResponse> updateAllNotificationToSeenService();

  @DELETE('${ApiConstants.notification}/user/{id}')
  Future<UserNotificationResponse> deleteUserNotificationService(
    @Path("id") String id,
  );
}
