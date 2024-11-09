// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MapState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            LatLng currentPosition, Map<String, Marker> markers)
        loaded,
    required TResult Function(List<Prediction> predictions) searchResults,
    required TResult Function(String message) error,
    required TResult Function(List<MarkerData> markers) updatedMarkers,
    required TResult Function(String homeLocation) setStringHomeLocationState,
    required TResult Function() getRouteCoordinatesLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        getRouteCoordinatesError,
    required TResult Function(List<LatLng> data) getRouteCoordinatesSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LatLng currentPosition, Map<String, Marker> markers)?
        loaded,
    TResult? Function(List<Prediction> predictions)? searchResults,
    TResult? Function(String message)? error,
    TResult? Function(List<MarkerData> markers)? updatedMarkers,
    TResult? Function(String homeLocation)? setStringHomeLocationState,
    TResult? Function()? getRouteCoordinatesLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getRouteCoordinatesError,
    TResult? Function(List<LatLng> data)? getRouteCoordinatesSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LatLng currentPosition, Map<String, Marker> markers)?
        loaded,
    TResult Function(List<Prediction> predictions)? searchResults,
    TResult Function(String message)? error,
    TResult Function(List<MarkerData> markers)? updatedMarkers,
    TResult Function(String homeLocation)? setStringHomeLocationState,
    TResult Function()? getRouteCoordinatesLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getRouteCoordinatesError,
    TResult Function(List<LatLng> data)? getRouteCoordinatesSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(SearchResults value) searchResults,
    required TResult Function(Error value) error,
    required TResult Function(UpdatedMarkers value) updatedMarkers,
    required TResult Function(SetStringHomeLocationState value)
        setStringHomeLocationState,
    required TResult Function(GetRouteCoordinatesLoading value)
        getRouteCoordinatesLoading,
    required TResult Function(GetRouteCoordinatesError value)
        getRouteCoordinatesError,
    required TResult Function(GetRouteCoordinatesSuccess value)
        getRouteCoordinatesSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(SearchResults value)? searchResults,
    TResult? Function(Error value)? error,
    TResult? Function(UpdatedMarkers value)? updatedMarkers,
    TResult? Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult? Function(GetRouteCoordinatesLoading value)?
        getRouteCoordinatesLoading,
    TResult? Function(GetRouteCoordinatesError value)? getRouteCoordinatesError,
    TResult? Function(GetRouteCoordinatesSuccess value)?
        getRouteCoordinatesSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SearchResults value)? searchResults,
    TResult Function(Error value)? error,
    TResult Function(UpdatedMarkers value)? updatedMarkers,
    TResult Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult Function(GetRouteCoordinatesLoading value)?
        getRouteCoordinatesLoading,
    TResult Function(GetRouteCoordinatesError value)? getRouteCoordinatesError,
    TResult Function(GetRouteCoordinatesSuccess value)?
        getRouteCoordinatesSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res, MapState>;
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res, $Val extends MapState>
    implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'MapState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            LatLng currentPosition, Map<String, Marker> markers)
        loaded,
    required TResult Function(List<Prediction> predictions) searchResults,
    required TResult Function(String message) error,
    required TResult Function(List<MarkerData> markers) updatedMarkers,
    required TResult Function(String homeLocation) setStringHomeLocationState,
    required TResult Function() getRouteCoordinatesLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        getRouteCoordinatesError,
    required TResult Function(List<LatLng> data) getRouteCoordinatesSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LatLng currentPosition, Map<String, Marker> markers)?
        loaded,
    TResult? Function(List<Prediction> predictions)? searchResults,
    TResult? Function(String message)? error,
    TResult? Function(List<MarkerData> markers)? updatedMarkers,
    TResult? Function(String homeLocation)? setStringHomeLocationState,
    TResult? Function()? getRouteCoordinatesLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getRouteCoordinatesError,
    TResult? Function(List<LatLng> data)? getRouteCoordinatesSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LatLng currentPosition, Map<String, Marker> markers)?
        loaded,
    TResult Function(List<Prediction> predictions)? searchResults,
    TResult Function(String message)? error,
    TResult Function(List<MarkerData> markers)? updatedMarkers,
    TResult Function(String homeLocation)? setStringHomeLocationState,
    TResult Function()? getRouteCoordinatesLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getRouteCoordinatesError,
    TResult Function(List<LatLng> data)? getRouteCoordinatesSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(SearchResults value) searchResults,
    required TResult Function(Error value) error,
    required TResult Function(UpdatedMarkers value) updatedMarkers,
    required TResult Function(SetStringHomeLocationState value)
        setStringHomeLocationState,
    required TResult Function(GetRouteCoordinatesLoading value)
        getRouteCoordinatesLoading,
    required TResult Function(GetRouteCoordinatesError value)
        getRouteCoordinatesError,
    required TResult Function(GetRouteCoordinatesSuccess value)
        getRouteCoordinatesSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(SearchResults value)? searchResults,
    TResult? Function(Error value)? error,
    TResult? Function(UpdatedMarkers value)? updatedMarkers,
    TResult? Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult? Function(GetRouteCoordinatesLoading value)?
        getRouteCoordinatesLoading,
    TResult? Function(GetRouteCoordinatesError value)? getRouteCoordinatesError,
    TResult? Function(GetRouteCoordinatesSuccess value)?
        getRouteCoordinatesSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SearchResults value)? searchResults,
    TResult Function(Error value)? error,
    TResult Function(UpdatedMarkers value)? updatedMarkers,
    TResult Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult Function(GetRouteCoordinatesLoading value)?
        getRouteCoordinatesLoading,
    TResult Function(GetRouteCoordinatesError value)? getRouteCoordinatesError,
    TResult Function(GetRouteCoordinatesSuccess value)?
        getRouteCoordinatesSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements MapState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'MapState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            LatLng currentPosition, Map<String, Marker> markers)
        loaded,
    required TResult Function(List<Prediction> predictions) searchResults,
    required TResult Function(String message) error,
    required TResult Function(List<MarkerData> markers) updatedMarkers,
    required TResult Function(String homeLocation) setStringHomeLocationState,
    required TResult Function() getRouteCoordinatesLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        getRouteCoordinatesError,
    required TResult Function(List<LatLng> data) getRouteCoordinatesSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LatLng currentPosition, Map<String, Marker> markers)?
        loaded,
    TResult? Function(List<Prediction> predictions)? searchResults,
    TResult? Function(String message)? error,
    TResult? Function(List<MarkerData> markers)? updatedMarkers,
    TResult? Function(String homeLocation)? setStringHomeLocationState,
    TResult? Function()? getRouteCoordinatesLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getRouteCoordinatesError,
    TResult? Function(List<LatLng> data)? getRouteCoordinatesSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LatLng currentPosition, Map<String, Marker> markers)?
        loaded,
    TResult Function(List<Prediction> predictions)? searchResults,
    TResult Function(String message)? error,
    TResult Function(List<MarkerData> markers)? updatedMarkers,
    TResult Function(String homeLocation)? setStringHomeLocationState,
    TResult Function()? getRouteCoordinatesLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getRouteCoordinatesError,
    TResult Function(List<LatLng> data)? getRouteCoordinatesSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(SearchResults value) searchResults,
    required TResult Function(Error value) error,
    required TResult Function(UpdatedMarkers value) updatedMarkers,
    required TResult Function(SetStringHomeLocationState value)
        setStringHomeLocationState,
    required TResult Function(GetRouteCoordinatesLoading value)
        getRouteCoordinatesLoading,
    required TResult Function(GetRouteCoordinatesError value)
        getRouteCoordinatesError,
    required TResult Function(GetRouteCoordinatesSuccess value)
        getRouteCoordinatesSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(SearchResults value)? searchResults,
    TResult? Function(Error value)? error,
    TResult? Function(UpdatedMarkers value)? updatedMarkers,
    TResult? Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult? Function(GetRouteCoordinatesLoading value)?
        getRouteCoordinatesLoading,
    TResult? Function(GetRouteCoordinatesError value)? getRouteCoordinatesError,
    TResult? Function(GetRouteCoordinatesSuccess value)?
        getRouteCoordinatesSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SearchResults value)? searchResults,
    TResult Function(Error value)? error,
    TResult Function(UpdatedMarkers value)? updatedMarkers,
    TResult Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult Function(GetRouteCoordinatesLoading value)?
        getRouteCoordinatesLoading,
    TResult Function(GetRouteCoordinatesError value)? getRouteCoordinatesError,
    TResult Function(GetRouteCoordinatesSuccess value)?
        getRouteCoordinatesSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements MapState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng currentPosition, Map<String, Marker> markers});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPosition = null,
    Object? markers = null,
  }) {
    return _then(_$LoadedImpl(
      null == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as LatLng,
      null == markers
          ? _value._markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Map<String, Marker>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl(this.currentPosition, final Map<String, Marker> markers)
      : _markers = markers;

  @override
  final LatLng currentPosition;
  final Map<String, Marker> _markers;
  @override
  Map<String, Marker> get markers {
    if (_markers is EqualUnmodifiableMapView) return _markers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_markers);
  }

  @override
  String toString() {
    return 'MapState.loaded(currentPosition: $currentPosition, markers: $markers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition) &&
            const DeepCollectionEquality().equals(other._markers, _markers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPosition,
      const DeepCollectionEquality().hash(_markers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            LatLng currentPosition, Map<String, Marker> markers)
        loaded,
    required TResult Function(List<Prediction> predictions) searchResults,
    required TResult Function(String message) error,
    required TResult Function(List<MarkerData> markers) updatedMarkers,
    required TResult Function(String homeLocation) setStringHomeLocationState,
    required TResult Function() getRouteCoordinatesLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        getRouteCoordinatesError,
    required TResult Function(List<LatLng> data) getRouteCoordinatesSuccess,
  }) {
    return loaded(currentPosition, markers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LatLng currentPosition, Map<String, Marker> markers)?
        loaded,
    TResult? Function(List<Prediction> predictions)? searchResults,
    TResult? Function(String message)? error,
    TResult? Function(List<MarkerData> markers)? updatedMarkers,
    TResult? Function(String homeLocation)? setStringHomeLocationState,
    TResult? Function()? getRouteCoordinatesLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getRouteCoordinatesError,
    TResult? Function(List<LatLng> data)? getRouteCoordinatesSuccess,
  }) {
    return loaded?.call(currentPosition, markers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LatLng currentPosition, Map<String, Marker> markers)?
        loaded,
    TResult Function(List<Prediction> predictions)? searchResults,
    TResult Function(String message)? error,
    TResult Function(List<MarkerData> markers)? updatedMarkers,
    TResult Function(String homeLocation)? setStringHomeLocationState,
    TResult Function()? getRouteCoordinatesLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getRouteCoordinatesError,
    TResult Function(List<LatLng> data)? getRouteCoordinatesSuccess,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(currentPosition, markers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(SearchResults value) searchResults,
    required TResult Function(Error value) error,
    required TResult Function(UpdatedMarkers value) updatedMarkers,
    required TResult Function(SetStringHomeLocationState value)
        setStringHomeLocationState,
    required TResult Function(GetRouteCoordinatesLoading value)
        getRouteCoordinatesLoading,
    required TResult Function(GetRouteCoordinatesError value)
        getRouteCoordinatesError,
    required TResult Function(GetRouteCoordinatesSuccess value)
        getRouteCoordinatesSuccess,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(SearchResults value)? searchResults,
    TResult? Function(Error value)? error,
    TResult? Function(UpdatedMarkers value)? updatedMarkers,
    TResult? Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult? Function(GetRouteCoordinatesLoading value)?
        getRouteCoordinatesLoading,
    TResult? Function(GetRouteCoordinatesError value)? getRouteCoordinatesError,
    TResult? Function(GetRouteCoordinatesSuccess value)?
        getRouteCoordinatesSuccess,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SearchResults value)? searchResults,
    TResult Function(Error value)? error,
    TResult Function(UpdatedMarkers value)? updatedMarkers,
    TResult Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult Function(GetRouteCoordinatesLoading value)?
        getRouteCoordinatesLoading,
    TResult Function(GetRouteCoordinatesError value)? getRouteCoordinatesError,
    TResult Function(GetRouteCoordinatesSuccess value)?
        getRouteCoordinatesSuccess,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements MapState {
  const factory Loaded(
          final LatLng currentPosition, final Map<String, Marker> markers) =
      _$LoadedImpl;

  LatLng get currentPosition;
  Map<String, Marker> get markers;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchResultsImplCopyWith<$Res> {
  factory _$$SearchResultsImplCopyWith(
          _$SearchResultsImpl value, $Res Function(_$SearchResultsImpl) then) =
      __$$SearchResultsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Prediction> predictions});
}

/// @nodoc
class __$$SearchResultsImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$SearchResultsImpl>
    implements _$$SearchResultsImplCopyWith<$Res> {
  __$$SearchResultsImplCopyWithImpl(
      _$SearchResultsImpl _value, $Res Function(_$SearchResultsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? predictions = null,
  }) {
    return _then(_$SearchResultsImpl(
      null == predictions
          ? _value._predictions
          : predictions // ignore: cast_nullable_to_non_nullable
              as List<Prediction>,
    ));
  }
}

/// @nodoc

class _$SearchResultsImpl implements SearchResults {
  const _$SearchResultsImpl(final List<Prediction> predictions)
      : _predictions = predictions;

  final List<Prediction> _predictions;
  @override
  List<Prediction> get predictions {
    if (_predictions is EqualUnmodifiableListView) return _predictions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_predictions);
  }

  @override
  String toString() {
    return 'MapState.searchResults(predictions: $predictions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultsImpl &&
            const DeepCollectionEquality()
                .equals(other._predictions, _predictions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_predictions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultsImplCopyWith<_$SearchResultsImpl> get copyWith =>
      __$$SearchResultsImplCopyWithImpl<_$SearchResultsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            LatLng currentPosition, Map<String, Marker> markers)
        loaded,
    required TResult Function(List<Prediction> predictions) searchResults,
    required TResult Function(String message) error,
    required TResult Function(List<MarkerData> markers) updatedMarkers,
    required TResult Function(String homeLocation) setStringHomeLocationState,
    required TResult Function() getRouteCoordinatesLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        getRouteCoordinatesError,
    required TResult Function(List<LatLng> data) getRouteCoordinatesSuccess,
  }) {
    return searchResults(predictions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LatLng currentPosition, Map<String, Marker> markers)?
        loaded,
    TResult? Function(List<Prediction> predictions)? searchResults,
    TResult? Function(String message)? error,
    TResult? Function(List<MarkerData> markers)? updatedMarkers,
    TResult? Function(String homeLocation)? setStringHomeLocationState,
    TResult? Function()? getRouteCoordinatesLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getRouteCoordinatesError,
    TResult? Function(List<LatLng> data)? getRouteCoordinatesSuccess,
  }) {
    return searchResults?.call(predictions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LatLng currentPosition, Map<String, Marker> markers)?
        loaded,
    TResult Function(List<Prediction> predictions)? searchResults,
    TResult Function(String message)? error,
    TResult Function(List<MarkerData> markers)? updatedMarkers,
    TResult Function(String homeLocation)? setStringHomeLocationState,
    TResult Function()? getRouteCoordinatesLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getRouteCoordinatesError,
    TResult Function(List<LatLng> data)? getRouteCoordinatesSuccess,
    required TResult orElse(),
  }) {
    if (searchResults != null) {
      return searchResults(predictions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(SearchResults value) searchResults,
    required TResult Function(Error value) error,
    required TResult Function(UpdatedMarkers value) updatedMarkers,
    required TResult Function(SetStringHomeLocationState value)
        setStringHomeLocationState,
    required TResult Function(GetRouteCoordinatesLoading value)
        getRouteCoordinatesLoading,
    required TResult Function(GetRouteCoordinatesError value)
        getRouteCoordinatesError,
    required TResult Function(GetRouteCoordinatesSuccess value)
        getRouteCoordinatesSuccess,
  }) {
    return searchResults(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(SearchResults value)? searchResults,
    TResult? Function(Error value)? error,
    TResult? Function(UpdatedMarkers value)? updatedMarkers,
    TResult? Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult? Function(GetRouteCoordinatesLoading value)?
        getRouteCoordinatesLoading,
    TResult? Function(GetRouteCoordinatesError value)? getRouteCoordinatesError,
    TResult? Function(GetRouteCoordinatesSuccess value)?
        getRouteCoordinatesSuccess,
  }) {
    return searchResults?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SearchResults value)? searchResults,
    TResult Function(Error value)? error,
    TResult Function(UpdatedMarkers value)? updatedMarkers,
    TResult Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult Function(GetRouteCoordinatesLoading value)?
        getRouteCoordinatesLoading,
    TResult Function(GetRouteCoordinatesError value)? getRouteCoordinatesError,
    TResult Function(GetRouteCoordinatesSuccess value)?
        getRouteCoordinatesSuccess,
    required TResult orElse(),
  }) {
    if (searchResults != null) {
      return searchResults(this);
    }
    return orElse();
  }
}

abstract class SearchResults implements MapState {
  const factory SearchResults(final List<Prediction> predictions) =
      _$SearchResultsImpl;

  List<Prediction> get predictions;
  @JsonKey(ignore: true)
  _$$SearchResultsImplCopyWith<_$SearchResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MapState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            LatLng currentPosition, Map<String, Marker> markers)
        loaded,
    required TResult Function(List<Prediction> predictions) searchResults,
    required TResult Function(String message) error,
    required TResult Function(List<MarkerData> markers) updatedMarkers,
    required TResult Function(String homeLocation) setStringHomeLocationState,
    required TResult Function() getRouteCoordinatesLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        getRouteCoordinatesError,
    required TResult Function(List<LatLng> data) getRouteCoordinatesSuccess,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LatLng currentPosition, Map<String, Marker> markers)?
        loaded,
    TResult? Function(List<Prediction> predictions)? searchResults,
    TResult? Function(String message)? error,
    TResult? Function(List<MarkerData> markers)? updatedMarkers,
    TResult? Function(String homeLocation)? setStringHomeLocationState,
    TResult? Function()? getRouteCoordinatesLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getRouteCoordinatesError,
    TResult? Function(List<LatLng> data)? getRouteCoordinatesSuccess,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LatLng currentPosition, Map<String, Marker> markers)?
        loaded,
    TResult Function(List<Prediction> predictions)? searchResults,
    TResult Function(String message)? error,
    TResult Function(List<MarkerData> markers)? updatedMarkers,
    TResult Function(String homeLocation)? setStringHomeLocationState,
    TResult Function()? getRouteCoordinatesLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getRouteCoordinatesError,
    TResult Function(List<LatLng> data)? getRouteCoordinatesSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(SearchResults value) searchResults,
    required TResult Function(Error value) error,
    required TResult Function(UpdatedMarkers value) updatedMarkers,
    required TResult Function(SetStringHomeLocationState value)
        setStringHomeLocationState,
    required TResult Function(GetRouteCoordinatesLoading value)
        getRouteCoordinatesLoading,
    required TResult Function(GetRouteCoordinatesError value)
        getRouteCoordinatesError,
    required TResult Function(GetRouteCoordinatesSuccess value)
        getRouteCoordinatesSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(SearchResults value)? searchResults,
    TResult? Function(Error value)? error,
    TResult? Function(UpdatedMarkers value)? updatedMarkers,
    TResult? Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult? Function(GetRouteCoordinatesLoading value)?
        getRouteCoordinatesLoading,
    TResult? Function(GetRouteCoordinatesError value)? getRouteCoordinatesError,
    TResult? Function(GetRouteCoordinatesSuccess value)?
        getRouteCoordinatesSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SearchResults value)? searchResults,
    TResult Function(Error value)? error,
    TResult Function(UpdatedMarkers value)? updatedMarkers,
    TResult Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult Function(GetRouteCoordinatesLoading value)?
        getRouteCoordinatesLoading,
    TResult Function(GetRouteCoordinatesError value)? getRouteCoordinatesError,
    TResult Function(GetRouteCoordinatesSuccess value)?
        getRouteCoordinatesSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements MapState {
  const factory Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedMarkersImplCopyWith<$Res> {
  factory _$$UpdatedMarkersImplCopyWith(_$UpdatedMarkersImpl value,
          $Res Function(_$UpdatedMarkersImpl) then) =
      __$$UpdatedMarkersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MarkerData> markers});
}

/// @nodoc
class __$$UpdatedMarkersImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$UpdatedMarkersImpl>
    implements _$$UpdatedMarkersImplCopyWith<$Res> {
  __$$UpdatedMarkersImplCopyWithImpl(
      _$UpdatedMarkersImpl _value, $Res Function(_$UpdatedMarkersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? markers = null,
  }) {
    return _then(_$UpdatedMarkersImpl(
      null == markers
          ? _value._markers
          : markers // ignore: cast_nullable_to_non_nullable
              as List<MarkerData>,
    ));
  }
}

/// @nodoc

class _$UpdatedMarkersImpl implements UpdatedMarkers {
  const _$UpdatedMarkersImpl(final List<MarkerData> markers)
      : _markers = markers;

  final List<MarkerData> _markers;
  @override
  List<MarkerData> get markers {
    if (_markers is EqualUnmodifiableListView) return _markers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_markers);
  }

  @override
  String toString() {
    return 'MapState.updatedMarkers(markers: $markers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedMarkersImpl &&
            const DeepCollectionEquality().equals(other._markers, _markers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_markers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedMarkersImplCopyWith<_$UpdatedMarkersImpl> get copyWith =>
      __$$UpdatedMarkersImplCopyWithImpl<_$UpdatedMarkersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            LatLng currentPosition, Map<String, Marker> markers)
        loaded,
    required TResult Function(List<Prediction> predictions) searchResults,
    required TResult Function(String message) error,
    required TResult Function(List<MarkerData> markers) updatedMarkers,
    required TResult Function(String homeLocation) setStringHomeLocationState,
    required TResult Function() getRouteCoordinatesLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        getRouteCoordinatesError,
    required TResult Function(List<LatLng> data) getRouteCoordinatesSuccess,
  }) {
    return updatedMarkers(markers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LatLng currentPosition, Map<String, Marker> markers)?
        loaded,
    TResult? Function(List<Prediction> predictions)? searchResults,
    TResult? Function(String message)? error,
    TResult? Function(List<MarkerData> markers)? updatedMarkers,
    TResult? Function(String homeLocation)? setStringHomeLocationState,
    TResult? Function()? getRouteCoordinatesLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getRouteCoordinatesError,
    TResult? Function(List<LatLng> data)? getRouteCoordinatesSuccess,
  }) {
    return updatedMarkers?.call(markers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LatLng currentPosition, Map<String, Marker> markers)?
        loaded,
    TResult Function(List<Prediction> predictions)? searchResults,
    TResult Function(String message)? error,
    TResult Function(List<MarkerData> markers)? updatedMarkers,
    TResult Function(String homeLocation)? setStringHomeLocationState,
    TResult Function()? getRouteCoordinatesLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getRouteCoordinatesError,
    TResult Function(List<LatLng> data)? getRouteCoordinatesSuccess,
    required TResult orElse(),
  }) {
    if (updatedMarkers != null) {
      return updatedMarkers(markers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(SearchResults value) searchResults,
    required TResult Function(Error value) error,
    required TResult Function(UpdatedMarkers value) updatedMarkers,
    required TResult Function(SetStringHomeLocationState value)
        setStringHomeLocationState,
    required TResult Function(GetRouteCoordinatesLoading value)
        getRouteCoordinatesLoading,
    required TResult Function(GetRouteCoordinatesError value)
        getRouteCoordinatesError,
    required TResult Function(GetRouteCoordinatesSuccess value)
        getRouteCoordinatesSuccess,
  }) {
    return updatedMarkers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(SearchResults value)? searchResults,
    TResult? Function(Error value)? error,
    TResult? Function(UpdatedMarkers value)? updatedMarkers,
    TResult? Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult? Function(GetRouteCoordinatesLoading value)?
        getRouteCoordinatesLoading,
    TResult? Function(GetRouteCoordinatesError value)? getRouteCoordinatesError,
    TResult? Function(GetRouteCoordinatesSuccess value)?
        getRouteCoordinatesSuccess,
  }) {
    return updatedMarkers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SearchResults value)? searchResults,
    TResult Function(Error value)? error,
    TResult Function(UpdatedMarkers value)? updatedMarkers,
    TResult Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult Function(GetRouteCoordinatesLoading value)?
        getRouteCoordinatesLoading,
    TResult Function(GetRouteCoordinatesError value)? getRouteCoordinatesError,
    TResult Function(GetRouteCoordinatesSuccess value)?
        getRouteCoordinatesSuccess,
    required TResult orElse(),
  }) {
    if (updatedMarkers != null) {
      return updatedMarkers(this);
    }
    return orElse();
  }
}

abstract class UpdatedMarkers implements MapState {
  const factory UpdatedMarkers(final List<MarkerData> markers) =
      _$UpdatedMarkersImpl;

  List<MarkerData> get markers;
  @JsonKey(ignore: true)
  _$$UpdatedMarkersImplCopyWith<_$UpdatedMarkersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetStringHomeLocationStateImplCopyWith<$Res> {
  factory _$$SetStringHomeLocationStateImplCopyWith(
          _$SetStringHomeLocationStateImpl value,
          $Res Function(_$SetStringHomeLocationStateImpl) then) =
      __$$SetStringHomeLocationStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String homeLocation});
}

/// @nodoc
class __$$SetStringHomeLocationStateImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$SetStringHomeLocationStateImpl>
    implements _$$SetStringHomeLocationStateImplCopyWith<$Res> {
  __$$SetStringHomeLocationStateImplCopyWithImpl(
      _$SetStringHomeLocationStateImpl _value,
      $Res Function(_$SetStringHomeLocationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeLocation = null,
  }) {
    return _then(_$SetStringHomeLocationStateImpl(
      null == homeLocation
          ? _value.homeLocation
          : homeLocation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetStringHomeLocationStateImpl implements SetStringHomeLocationState {
  const _$SetStringHomeLocationStateImpl(this.homeLocation);

  @override
  final String homeLocation;

  @override
  String toString() {
    return 'MapState.setStringHomeLocationState(homeLocation: $homeLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetStringHomeLocationStateImpl &&
            (identical(other.homeLocation, homeLocation) ||
                other.homeLocation == homeLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, homeLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetStringHomeLocationStateImplCopyWith<_$SetStringHomeLocationStateImpl>
      get copyWith => __$$SetStringHomeLocationStateImplCopyWithImpl<
          _$SetStringHomeLocationStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            LatLng currentPosition, Map<String, Marker> markers)
        loaded,
    required TResult Function(List<Prediction> predictions) searchResults,
    required TResult Function(String message) error,
    required TResult Function(List<MarkerData> markers) updatedMarkers,
    required TResult Function(String homeLocation) setStringHomeLocationState,
    required TResult Function() getRouteCoordinatesLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        getRouteCoordinatesError,
    required TResult Function(List<LatLng> data) getRouteCoordinatesSuccess,
  }) {
    return setStringHomeLocationState(homeLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LatLng currentPosition, Map<String, Marker> markers)?
        loaded,
    TResult? Function(List<Prediction> predictions)? searchResults,
    TResult? Function(String message)? error,
    TResult? Function(List<MarkerData> markers)? updatedMarkers,
    TResult? Function(String homeLocation)? setStringHomeLocationState,
    TResult? Function()? getRouteCoordinatesLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getRouteCoordinatesError,
    TResult? Function(List<LatLng> data)? getRouteCoordinatesSuccess,
  }) {
    return setStringHomeLocationState?.call(homeLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LatLng currentPosition, Map<String, Marker> markers)?
        loaded,
    TResult Function(List<Prediction> predictions)? searchResults,
    TResult Function(String message)? error,
    TResult Function(List<MarkerData> markers)? updatedMarkers,
    TResult Function(String homeLocation)? setStringHomeLocationState,
    TResult Function()? getRouteCoordinatesLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getRouteCoordinatesError,
    TResult Function(List<LatLng> data)? getRouteCoordinatesSuccess,
    required TResult orElse(),
  }) {
    if (setStringHomeLocationState != null) {
      return setStringHomeLocationState(homeLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(SearchResults value) searchResults,
    required TResult Function(Error value) error,
    required TResult Function(UpdatedMarkers value) updatedMarkers,
    required TResult Function(SetStringHomeLocationState value)
        setStringHomeLocationState,
    required TResult Function(GetRouteCoordinatesLoading value)
        getRouteCoordinatesLoading,
    required TResult Function(GetRouteCoordinatesError value)
        getRouteCoordinatesError,
    required TResult Function(GetRouteCoordinatesSuccess value)
        getRouteCoordinatesSuccess,
  }) {
    return setStringHomeLocationState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(SearchResults value)? searchResults,
    TResult? Function(Error value)? error,
    TResult? Function(UpdatedMarkers value)? updatedMarkers,
    TResult? Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult? Function(GetRouteCoordinatesLoading value)?
        getRouteCoordinatesLoading,
    TResult? Function(GetRouteCoordinatesError value)? getRouteCoordinatesError,
    TResult? Function(GetRouteCoordinatesSuccess value)?
        getRouteCoordinatesSuccess,
  }) {
    return setStringHomeLocationState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SearchResults value)? searchResults,
    TResult Function(Error value)? error,
    TResult Function(UpdatedMarkers value)? updatedMarkers,
    TResult Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult Function(GetRouteCoordinatesLoading value)?
        getRouteCoordinatesLoading,
    TResult Function(GetRouteCoordinatesError value)? getRouteCoordinatesError,
    TResult Function(GetRouteCoordinatesSuccess value)?
        getRouteCoordinatesSuccess,
    required TResult orElse(),
  }) {
    if (setStringHomeLocationState != null) {
      return setStringHomeLocationState(this);
    }
    return orElse();
  }
}

abstract class SetStringHomeLocationState implements MapState {
  const factory SetStringHomeLocationState(final String homeLocation) =
      _$SetStringHomeLocationStateImpl;

  String get homeLocation;
  @JsonKey(ignore: true)
  _$$SetStringHomeLocationStateImplCopyWith<_$SetStringHomeLocationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetRouteCoordinatesLoadingImplCopyWith<$Res> {
  factory _$$GetRouteCoordinatesLoadingImplCopyWith(
          _$GetRouteCoordinatesLoadingImpl value,
          $Res Function(_$GetRouteCoordinatesLoadingImpl) then) =
      __$$GetRouteCoordinatesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRouteCoordinatesLoadingImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$GetRouteCoordinatesLoadingImpl>
    implements _$$GetRouteCoordinatesLoadingImplCopyWith<$Res> {
  __$$GetRouteCoordinatesLoadingImplCopyWithImpl(
      _$GetRouteCoordinatesLoadingImpl _value,
      $Res Function(_$GetRouteCoordinatesLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetRouteCoordinatesLoadingImpl implements GetRouteCoordinatesLoading {
  const _$GetRouteCoordinatesLoadingImpl();

  @override
  String toString() {
    return 'MapState.getRouteCoordinatesLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRouteCoordinatesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            LatLng currentPosition, Map<String, Marker> markers)
        loaded,
    required TResult Function(List<Prediction> predictions) searchResults,
    required TResult Function(String message) error,
    required TResult Function(List<MarkerData> markers) updatedMarkers,
    required TResult Function(String homeLocation) setStringHomeLocationState,
    required TResult Function() getRouteCoordinatesLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        getRouteCoordinatesError,
    required TResult Function(List<LatLng> data) getRouteCoordinatesSuccess,
  }) {
    return getRouteCoordinatesLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LatLng currentPosition, Map<String, Marker> markers)?
        loaded,
    TResult? Function(List<Prediction> predictions)? searchResults,
    TResult? Function(String message)? error,
    TResult? Function(List<MarkerData> markers)? updatedMarkers,
    TResult? Function(String homeLocation)? setStringHomeLocationState,
    TResult? Function()? getRouteCoordinatesLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getRouteCoordinatesError,
    TResult? Function(List<LatLng> data)? getRouteCoordinatesSuccess,
  }) {
    return getRouteCoordinatesLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LatLng currentPosition, Map<String, Marker> markers)?
        loaded,
    TResult Function(List<Prediction> predictions)? searchResults,
    TResult Function(String message)? error,
    TResult Function(List<MarkerData> markers)? updatedMarkers,
    TResult Function(String homeLocation)? setStringHomeLocationState,
    TResult Function()? getRouteCoordinatesLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getRouteCoordinatesError,
    TResult Function(List<LatLng> data)? getRouteCoordinatesSuccess,
    required TResult orElse(),
  }) {
    if (getRouteCoordinatesLoading != null) {
      return getRouteCoordinatesLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(SearchResults value) searchResults,
    required TResult Function(Error value) error,
    required TResult Function(UpdatedMarkers value) updatedMarkers,
    required TResult Function(SetStringHomeLocationState value)
        setStringHomeLocationState,
    required TResult Function(GetRouteCoordinatesLoading value)
        getRouteCoordinatesLoading,
    required TResult Function(GetRouteCoordinatesError value)
        getRouteCoordinatesError,
    required TResult Function(GetRouteCoordinatesSuccess value)
        getRouteCoordinatesSuccess,
  }) {
    return getRouteCoordinatesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(SearchResults value)? searchResults,
    TResult? Function(Error value)? error,
    TResult? Function(UpdatedMarkers value)? updatedMarkers,
    TResult? Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult? Function(GetRouteCoordinatesLoading value)?
        getRouteCoordinatesLoading,
    TResult? Function(GetRouteCoordinatesError value)? getRouteCoordinatesError,
    TResult? Function(GetRouteCoordinatesSuccess value)?
        getRouteCoordinatesSuccess,
  }) {
    return getRouteCoordinatesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SearchResults value)? searchResults,
    TResult Function(Error value)? error,
    TResult Function(UpdatedMarkers value)? updatedMarkers,
    TResult Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult Function(GetRouteCoordinatesLoading value)?
        getRouteCoordinatesLoading,
    TResult Function(GetRouteCoordinatesError value)? getRouteCoordinatesError,
    TResult Function(GetRouteCoordinatesSuccess value)?
        getRouteCoordinatesSuccess,
    required TResult orElse(),
  }) {
    if (getRouteCoordinatesLoading != null) {
      return getRouteCoordinatesLoading(this);
    }
    return orElse();
  }
}

abstract class GetRouteCoordinatesLoading implements MapState {
  const factory GetRouteCoordinatesLoading() = _$GetRouteCoordinatesLoadingImpl;
}

/// @nodoc
abstract class _$$GetRouteCoordinatesErrorImplCopyWith<$Res> {
  factory _$$GetRouteCoordinatesErrorImplCopyWith(
          _$GetRouteCoordinatesErrorImpl value,
          $Res Function(_$GetRouteCoordinatesErrorImpl) then) =
      __$$GetRouteCoordinatesErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$GetRouteCoordinatesErrorImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$GetRouteCoordinatesErrorImpl>
    implements _$$GetRouteCoordinatesErrorImplCopyWith<$Res> {
  __$$GetRouteCoordinatesErrorImplCopyWithImpl(
      _$GetRouteCoordinatesErrorImpl _value,
      $Res Function(_$GetRouteCoordinatesErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$GetRouteCoordinatesErrorImpl(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$GetRouteCoordinatesErrorImpl implements GetRouteCoordinatesError {
  const _$GetRouteCoordinatesErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'MapState.getRouteCoordinatesError(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRouteCoordinatesErrorImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRouteCoordinatesErrorImplCopyWith<_$GetRouteCoordinatesErrorImpl>
      get copyWith => __$$GetRouteCoordinatesErrorImplCopyWithImpl<
          _$GetRouteCoordinatesErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            LatLng currentPosition, Map<String, Marker> markers)
        loaded,
    required TResult Function(List<Prediction> predictions) searchResults,
    required TResult Function(String message) error,
    required TResult Function(List<MarkerData> markers) updatedMarkers,
    required TResult Function(String homeLocation) setStringHomeLocationState,
    required TResult Function() getRouteCoordinatesLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        getRouteCoordinatesError,
    required TResult Function(List<LatLng> data) getRouteCoordinatesSuccess,
  }) {
    return getRouteCoordinatesError(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LatLng currentPosition, Map<String, Marker> markers)?
        loaded,
    TResult? Function(List<Prediction> predictions)? searchResults,
    TResult? Function(String message)? error,
    TResult? Function(List<MarkerData> markers)? updatedMarkers,
    TResult? Function(String homeLocation)? setStringHomeLocationState,
    TResult? Function()? getRouteCoordinatesLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getRouteCoordinatesError,
    TResult? Function(List<LatLng> data)? getRouteCoordinatesSuccess,
  }) {
    return getRouteCoordinatesError?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LatLng currentPosition, Map<String, Marker> markers)?
        loaded,
    TResult Function(List<Prediction> predictions)? searchResults,
    TResult Function(String message)? error,
    TResult Function(List<MarkerData> markers)? updatedMarkers,
    TResult Function(String homeLocation)? setStringHomeLocationState,
    TResult Function()? getRouteCoordinatesLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getRouteCoordinatesError,
    TResult Function(List<LatLng> data)? getRouteCoordinatesSuccess,
    required TResult orElse(),
  }) {
    if (getRouteCoordinatesError != null) {
      return getRouteCoordinatesError(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(SearchResults value) searchResults,
    required TResult Function(Error value) error,
    required TResult Function(UpdatedMarkers value) updatedMarkers,
    required TResult Function(SetStringHomeLocationState value)
        setStringHomeLocationState,
    required TResult Function(GetRouteCoordinatesLoading value)
        getRouteCoordinatesLoading,
    required TResult Function(GetRouteCoordinatesError value)
        getRouteCoordinatesError,
    required TResult Function(GetRouteCoordinatesSuccess value)
        getRouteCoordinatesSuccess,
  }) {
    return getRouteCoordinatesError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(SearchResults value)? searchResults,
    TResult? Function(Error value)? error,
    TResult? Function(UpdatedMarkers value)? updatedMarkers,
    TResult? Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult? Function(GetRouteCoordinatesLoading value)?
        getRouteCoordinatesLoading,
    TResult? Function(GetRouteCoordinatesError value)? getRouteCoordinatesError,
    TResult? Function(GetRouteCoordinatesSuccess value)?
        getRouteCoordinatesSuccess,
  }) {
    return getRouteCoordinatesError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SearchResults value)? searchResults,
    TResult Function(Error value)? error,
    TResult Function(UpdatedMarkers value)? updatedMarkers,
    TResult Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult Function(GetRouteCoordinatesLoading value)?
        getRouteCoordinatesLoading,
    TResult Function(GetRouteCoordinatesError value)? getRouteCoordinatesError,
    TResult Function(GetRouteCoordinatesSuccess value)?
        getRouteCoordinatesSuccess,
    required TResult orElse(),
  }) {
    if (getRouteCoordinatesError != null) {
      return getRouteCoordinatesError(this);
    }
    return orElse();
  }
}

abstract class GetRouteCoordinatesError implements MapState {
  const factory GetRouteCoordinatesError(final ApiErrorModel apiErrorModel) =
      _$GetRouteCoordinatesErrorImpl;

  ApiErrorModel get apiErrorModel;
  @JsonKey(ignore: true)
  _$$GetRouteCoordinatesErrorImplCopyWith<_$GetRouteCoordinatesErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetRouteCoordinatesSuccessImplCopyWith<$Res> {
  factory _$$GetRouteCoordinatesSuccessImplCopyWith(
          _$GetRouteCoordinatesSuccessImpl value,
          $Res Function(_$GetRouteCoordinatesSuccessImpl) then) =
      __$$GetRouteCoordinatesSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LatLng> data});
}

/// @nodoc
class __$$GetRouteCoordinatesSuccessImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$GetRouteCoordinatesSuccessImpl>
    implements _$$GetRouteCoordinatesSuccessImplCopyWith<$Res> {
  __$$GetRouteCoordinatesSuccessImplCopyWithImpl(
      _$GetRouteCoordinatesSuccessImpl _value,
      $Res Function(_$GetRouteCoordinatesSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GetRouteCoordinatesSuccessImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
    ));
  }
}

/// @nodoc

class _$GetRouteCoordinatesSuccessImpl implements GetRouteCoordinatesSuccess {
  const _$GetRouteCoordinatesSuccessImpl(final List<LatLng> data)
      : _data = data;

  final List<LatLng> _data;
  @override
  List<LatLng> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'MapState.getRouteCoordinatesSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRouteCoordinatesSuccessImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRouteCoordinatesSuccessImplCopyWith<_$GetRouteCoordinatesSuccessImpl>
      get copyWith => __$$GetRouteCoordinatesSuccessImplCopyWithImpl<
          _$GetRouteCoordinatesSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            LatLng currentPosition, Map<String, Marker> markers)
        loaded,
    required TResult Function(List<Prediction> predictions) searchResults,
    required TResult Function(String message) error,
    required TResult Function(List<MarkerData> markers) updatedMarkers,
    required TResult Function(String homeLocation) setStringHomeLocationState,
    required TResult Function() getRouteCoordinatesLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        getRouteCoordinatesError,
    required TResult Function(List<LatLng> data) getRouteCoordinatesSuccess,
  }) {
    return getRouteCoordinatesSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LatLng currentPosition, Map<String, Marker> markers)?
        loaded,
    TResult? Function(List<Prediction> predictions)? searchResults,
    TResult? Function(String message)? error,
    TResult? Function(List<MarkerData> markers)? updatedMarkers,
    TResult? Function(String homeLocation)? setStringHomeLocationState,
    TResult? Function()? getRouteCoordinatesLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getRouteCoordinatesError,
    TResult? Function(List<LatLng> data)? getRouteCoordinatesSuccess,
  }) {
    return getRouteCoordinatesSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LatLng currentPosition, Map<String, Marker> markers)?
        loaded,
    TResult Function(List<Prediction> predictions)? searchResults,
    TResult Function(String message)? error,
    TResult Function(List<MarkerData> markers)? updatedMarkers,
    TResult Function(String homeLocation)? setStringHomeLocationState,
    TResult Function()? getRouteCoordinatesLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getRouteCoordinatesError,
    TResult Function(List<LatLng> data)? getRouteCoordinatesSuccess,
    required TResult orElse(),
  }) {
    if (getRouteCoordinatesSuccess != null) {
      return getRouteCoordinatesSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(SearchResults value) searchResults,
    required TResult Function(Error value) error,
    required TResult Function(UpdatedMarkers value) updatedMarkers,
    required TResult Function(SetStringHomeLocationState value)
        setStringHomeLocationState,
    required TResult Function(GetRouteCoordinatesLoading value)
        getRouteCoordinatesLoading,
    required TResult Function(GetRouteCoordinatesError value)
        getRouteCoordinatesError,
    required TResult Function(GetRouteCoordinatesSuccess value)
        getRouteCoordinatesSuccess,
  }) {
    return getRouteCoordinatesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(SearchResults value)? searchResults,
    TResult? Function(Error value)? error,
    TResult? Function(UpdatedMarkers value)? updatedMarkers,
    TResult? Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult? Function(GetRouteCoordinatesLoading value)?
        getRouteCoordinatesLoading,
    TResult? Function(GetRouteCoordinatesError value)? getRouteCoordinatesError,
    TResult? Function(GetRouteCoordinatesSuccess value)?
        getRouteCoordinatesSuccess,
  }) {
    return getRouteCoordinatesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SearchResults value)? searchResults,
    TResult Function(Error value)? error,
    TResult Function(UpdatedMarkers value)? updatedMarkers,
    TResult Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult Function(GetRouteCoordinatesLoading value)?
        getRouteCoordinatesLoading,
    TResult Function(GetRouteCoordinatesError value)? getRouteCoordinatesError,
    TResult Function(GetRouteCoordinatesSuccess value)?
        getRouteCoordinatesSuccess,
    required TResult orElse(),
  }) {
    if (getRouteCoordinatesSuccess != null) {
      return getRouteCoordinatesSuccess(this);
    }
    return orElse();
  }
}

abstract class GetRouteCoordinatesSuccess implements MapState {
  const factory GetRouteCoordinatesSuccess(final List<LatLng> data) =
      _$GetRouteCoordinatesSuccessImpl;

  List<LatLng> get data;
  @JsonKey(ignore: true)
  _$$GetRouteCoordinatesSuccessImplCopyWith<_$GetRouteCoordinatesSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
