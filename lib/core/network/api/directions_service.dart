import 'package:retrofit/retrofit.dart';

import '../../../../../core/common/shared/shared_imports.dart'; 

part 'directions_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrlDirections)
abstract class DirectionsService {
  factory DirectionsService(Dio dio, {String baseUrl}) = _DirectionsService;

   @GET(ApiConstants.directionsJson)
  Future<DirectionsResponse> getRouteService(
    @Query("origin") String origin,
    @Query("destination") String destination,
    @Query("key") String apiKey,
  );
}
