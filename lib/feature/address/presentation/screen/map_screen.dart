import '../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class MapScreen extends StatefulWidget {
  final bool isUpdateMap;
  final bool isHomeMap;
  const MapScreen(
      {super.key, this.isUpdateMap = false, this.isHomeMap = false});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  void initState() {
    super.initState();
    final mapCuibt = context.read<MapCubit>();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (!context.read<MapCubit>().isClosed) {
        if (widget.isHomeMap == false) {
          await mapCuibt.getCurrentLocation(context).then(
            (value) {
              if (!context.read<MapCubit>().isClosed) {
                //mapCuibt.checkAddressAvailableFetch(mapCuibt.targetPosition);
              }
            },
          );
        } else {
          mapCuibt.addLocationToMap(context);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);

    return Scaffold(
      body: BlocConsumer<MapCubit, MapState>(
        listener: (context, state) {
          state.whenOrNull(
              checkAddressAvailableError: (apiErrorModel) =>
                  ShowToast.showToastErrorTop(
                      errorMessage: apiErrorModel.message!, context: context),
              error: (message) {
                ShowToast.showToastErrorTop(
                    errorMessage: message, context: context);
              });
        },
        builder: (context, state) {
          final mapCuibt = context.read<MapCubit>();

          return Stack(
            children: [
              GoogleMapWidget(
                mapCubit: mapCuibt,
              ),
              BuildSearchBar(
                mapCubit: mapCuibt,
              ),
              const BuildSearchResults(),
              CurrentLocationButton(
                mapCubit: mapCuibt,
              ),
              _togelMapType(responsive),
              PickLocationButton(
                isUpdateMap: widget.isUpdateMap,
                mapCubit: mapCuibt,
                mapState: state,
                isHomeMap: widget.isHomeMap,
              ),
            ],
          );
        },
      ),
    );
  }

  Positioned _togelMapType(ResponsiveUtils responsive) {
    return Positioned(
      bottom: 105.h,
      right: 25.w,
      child: InkWell(
        onTap: () {
          context.read<MapCubit>().toggleMapType();
        },
        child: CircleAvatar(
          maxRadius: responsive.setBorderRadius(6),
          backgroundColor: ColorManger.brown,
          child: Image.asset(
            ImageAsset.map,
            height: responsive.setHeight(3),
          ),
        ),
      ),
    );
  }
}
