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
    required TResult Function(MapType mapType) toggleMapState,
    required TResult Function(String homeLocation) setStringHomeLocationState,
    required TResult Function() checkAddressAvailableLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        checkAddressAvailableError,
    required TResult Function(CheckLocationAvailableResponse data)
        checkAddressAvailableSuccess,
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
    TResult? Function(MapType mapType)? toggleMapState,
    TResult? Function(String homeLocation)? setStringHomeLocationState,
    TResult? Function()? checkAddressAvailableLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? checkAddressAvailableError,
    TResult? Function(CheckLocationAvailableResponse data)?
        checkAddressAvailableSuccess,
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
    TResult Function(MapType mapType)? toggleMapState,
    TResult Function(String homeLocation)? setStringHomeLocationState,
    TResult Function()? checkAddressAvailableLoading,
    TResult Function(ApiErrorModel apiErrorModel)? checkAddressAvailableError,
    TResult Function(CheckLocationAvailableResponse data)?
        checkAddressAvailableSuccess,
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
    required TResult Function(ToggleMapState value) toggleMapState,
    required TResult Function(SetStringHomeLocationState value)
        setStringHomeLocationState,
    required TResult Function(CheckAddressAvailableLoading value)
        checkAddressAvailableLoading,
    required TResult Function(CheckAddressAvailableError value)
        checkAddressAvailableError,
    required TResult Function(CheckAddressAvailableSuccess value)
        checkAddressAvailableSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(SearchResults value)? searchResults,
    TResult? Function(Error value)? error,
    TResult? Function(ToggleMapState value)? toggleMapState,
    TResult? Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult? Function(CheckAddressAvailableLoading value)?
        checkAddressAvailableLoading,
    TResult? Function(CheckAddressAvailableError value)?
        checkAddressAvailableError,
    TResult? Function(CheckAddressAvailableSuccess value)?
        checkAddressAvailableSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SearchResults value)? searchResults,
    TResult Function(Error value)? error,
    TResult Function(ToggleMapState value)? toggleMapState,
    TResult Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult Function(CheckAddressAvailableLoading value)?
        checkAddressAvailableLoading,
    TResult Function(CheckAddressAvailableError value)?
        checkAddressAvailableError,
    TResult Function(CheckAddressAvailableSuccess value)?
        checkAddressAvailableSuccess,
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
    required TResult Function(MapType mapType) toggleMapState,
    required TResult Function(String homeLocation) setStringHomeLocationState,
    required TResult Function() checkAddressAvailableLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        checkAddressAvailableError,
    required TResult Function(CheckLocationAvailableResponse data)
        checkAddressAvailableSuccess,
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
    TResult? Function(MapType mapType)? toggleMapState,
    TResult? Function(String homeLocation)? setStringHomeLocationState,
    TResult? Function()? checkAddressAvailableLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? checkAddressAvailableError,
    TResult? Function(CheckLocationAvailableResponse data)?
        checkAddressAvailableSuccess,
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
    TResult Function(MapType mapType)? toggleMapState,
    TResult Function(String homeLocation)? setStringHomeLocationState,
    TResult Function()? checkAddressAvailableLoading,
    TResult Function(ApiErrorModel apiErrorModel)? checkAddressAvailableError,
    TResult Function(CheckLocationAvailableResponse data)?
        checkAddressAvailableSuccess,
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
    required TResult Function(ToggleMapState value) toggleMapState,
    required TResult Function(SetStringHomeLocationState value)
        setStringHomeLocationState,
    required TResult Function(CheckAddressAvailableLoading value)
        checkAddressAvailableLoading,
    required TResult Function(CheckAddressAvailableError value)
        checkAddressAvailableError,
    required TResult Function(CheckAddressAvailableSuccess value)
        checkAddressAvailableSuccess,
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
    TResult? Function(ToggleMapState value)? toggleMapState,
    TResult? Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult? Function(CheckAddressAvailableLoading value)?
        checkAddressAvailableLoading,
    TResult? Function(CheckAddressAvailableError value)?
        checkAddressAvailableError,
    TResult? Function(CheckAddressAvailableSuccess value)?
        checkAddressAvailableSuccess,
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
    TResult Function(ToggleMapState value)? toggleMapState,
    TResult Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult Function(CheckAddressAvailableLoading value)?
        checkAddressAvailableLoading,
    TResult Function(CheckAddressAvailableError value)?
        checkAddressAvailableError,
    TResult Function(CheckAddressAvailableSuccess value)?
        checkAddressAvailableSuccess,
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
    required TResult Function(MapType mapType) toggleMapState,
    required TResult Function(String homeLocation) setStringHomeLocationState,
    required TResult Function() checkAddressAvailableLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        checkAddressAvailableError,
    required TResult Function(CheckLocationAvailableResponse data)
        checkAddressAvailableSuccess,
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
    TResult? Function(MapType mapType)? toggleMapState,
    TResult? Function(String homeLocation)? setStringHomeLocationState,
    TResult? Function()? checkAddressAvailableLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? checkAddressAvailableError,
    TResult? Function(CheckLocationAvailableResponse data)?
        checkAddressAvailableSuccess,
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
    TResult Function(MapType mapType)? toggleMapState,
    TResult Function(String homeLocation)? setStringHomeLocationState,
    TResult Function()? checkAddressAvailableLoading,
    TResult Function(ApiErrorModel apiErrorModel)? checkAddressAvailableError,
    TResult Function(CheckLocationAvailableResponse data)?
        checkAddressAvailableSuccess,
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
    required TResult Function(ToggleMapState value) toggleMapState,
    required TResult Function(SetStringHomeLocationState value)
        setStringHomeLocationState,
    required TResult Function(CheckAddressAvailableLoading value)
        checkAddressAvailableLoading,
    required TResult Function(CheckAddressAvailableError value)
        checkAddressAvailableError,
    required TResult Function(CheckAddressAvailableSuccess value)
        checkAddressAvailableSuccess,
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
    TResult? Function(ToggleMapState value)? toggleMapState,
    TResult? Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult? Function(CheckAddressAvailableLoading value)?
        checkAddressAvailableLoading,
    TResult? Function(CheckAddressAvailableError value)?
        checkAddressAvailableError,
    TResult? Function(CheckAddressAvailableSuccess value)?
        checkAddressAvailableSuccess,
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
    TResult Function(ToggleMapState value)? toggleMapState,
    TResult Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult Function(CheckAddressAvailableLoading value)?
        checkAddressAvailableLoading,
    TResult Function(CheckAddressAvailableError value)?
        checkAddressAvailableError,
    TResult Function(CheckAddressAvailableSuccess value)?
        checkAddressAvailableSuccess,
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
    required TResult Function(MapType mapType) toggleMapState,
    required TResult Function(String homeLocation) setStringHomeLocationState,
    required TResult Function() checkAddressAvailableLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        checkAddressAvailableError,
    required TResult Function(CheckLocationAvailableResponse data)
        checkAddressAvailableSuccess,
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
    TResult? Function(MapType mapType)? toggleMapState,
    TResult? Function(String homeLocation)? setStringHomeLocationState,
    TResult? Function()? checkAddressAvailableLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? checkAddressAvailableError,
    TResult? Function(CheckLocationAvailableResponse data)?
        checkAddressAvailableSuccess,
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
    TResult Function(MapType mapType)? toggleMapState,
    TResult Function(String homeLocation)? setStringHomeLocationState,
    TResult Function()? checkAddressAvailableLoading,
    TResult Function(ApiErrorModel apiErrorModel)? checkAddressAvailableError,
    TResult Function(CheckLocationAvailableResponse data)?
        checkAddressAvailableSuccess,
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
    required TResult Function(ToggleMapState value) toggleMapState,
    required TResult Function(SetStringHomeLocationState value)
        setStringHomeLocationState,
    required TResult Function(CheckAddressAvailableLoading value)
        checkAddressAvailableLoading,
    required TResult Function(CheckAddressAvailableError value)
        checkAddressAvailableError,
    required TResult Function(CheckAddressAvailableSuccess value)
        checkAddressAvailableSuccess,
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
    TResult? Function(ToggleMapState value)? toggleMapState,
    TResult? Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult? Function(CheckAddressAvailableLoading value)?
        checkAddressAvailableLoading,
    TResult? Function(CheckAddressAvailableError value)?
        checkAddressAvailableError,
    TResult? Function(CheckAddressAvailableSuccess value)?
        checkAddressAvailableSuccess,
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
    TResult Function(ToggleMapState value)? toggleMapState,
    TResult Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult Function(CheckAddressAvailableLoading value)?
        checkAddressAvailableLoading,
    TResult Function(CheckAddressAvailableError value)?
        checkAddressAvailableError,
    TResult Function(CheckAddressAvailableSuccess value)?
        checkAddressAvailableSuccess,
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
    required TResult Function(MapType mapType) toggleMapState,
    required TResult Function(String homeLocation) setStringHomeLocationState,
    required TResult Function() checkAddressAvailableLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        checkAddressAvailableError,
    required TResult Function(CheckLocationAvailableResponse data)
        checkAddressAvailableSuccess,
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
    TResult? Function(MapType mapType)? toggleMapState,
    TResult? Function(String homeLocation)? setStringHomeLocationState,
    TResult? Function()? checkAddressAvailableLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? checkAddressAvailableError,
    TResult? Function(CheckLocationAvailableResponse data)?
        checkAddressAvailableSuccess,
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
    TResult Function(MapType mapType)? toggleMapState,
    TResult Function(String homeLocation)? setStringHomeLocationState,
    TResult Function()? checkAddressAvailableLoading,
    TResult Function(ApiErrorModel apiErrorModel)? checkAddressAvailableError,
    TResult Function(CheckLocationAvailableResponse data)?
        checkAddressAvailableSuccess,
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
    required TResult Function(ToggleMapState value) toggleMapState,
    required TResult Function(SetStringHomeLocationState value)
        setStringHomeLocationState,
    required TResult Function(CheckAddressAvailableLoading value)
        checkAddressAvailableLoading,
    required TResult Function(CheckAddressAvailableError value)
        checkAddressAvailableError,
    required TResult Function(CheckAddressAvailableSuccess value)
        checkAddressAvailableSuccess,
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
    TResult? Function(ToggleMapState value)? toggleMapState,
    TResult? Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult? Function(CheckAddressAvailableLoading value)?
        checkAddressAvailableLoading,
    TResult? Function(CheckAddressAvailableError value)?
        checkAddressAvailableError,
    TResult? Function(CheckAddressAvailableSuccess value)?
        checkAddressAvailableSuccess,
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
    TResult Function(ToggleMapState value)? toggleMapState,
    TResult Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult Function(CheckAddressAvailableLoading value)?
        checkAddressAvailableLoading,
    TResult Function(CheckAddressAvailableError value)?
        checkAddressAvailableError,
    TResult Function(CheckAddressAvailableSuccess value)?
        checkAddressAvailableSuccess,
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
    required TResult Function(MapType mapType) toggleMapState,
    required TResult Function(String homeLocation) setStringHomeLocationState,
    required TResult Function() checkAddressAvailableLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        checkAddressAvailableError,
    required TResult Function(CheckLocationAvailableResponse data)
        checkAddressAvailableSuccess,
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
    TResult? Function(MapType mapType)? toggleMapState,
    TResult? Function(String homeLocation)? setStringHomeLocationState,
    TResult? Function()? checkAddressAvailableLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? checkAddressAvailableError,
    TResult? Function(CheckLocationAvailableResponse data)?
        checkAddressAvailableSuccess,
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
    TResult Function(MapType mapType)? toggleMapState,
    TResult Function(String homeLocation)? setStringHomeLocationState,
    TResult Function()? checkAddressAvailableLoading,
    TResult Function(ApiErrorModel apiErrorModel)? checkAddressAvailableError,
    TResult Function(CheckLocationAvailableResponse data)?
        checkAddressAvailableSuccess,
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
    required TResult Function(ToggleMapState value) toggleMapState,
    required TResult Function(SetStringHomeLocationState value)
        setStringHomeLocationState,
    required TResult Function(CheckAddressAvailableLoading value)
        checkAddressAvailableLoading,
    required TResult Function(CheckAddressAvailableError value)
        checkAddressAvailableError,
    required TResult Function(CheckAddressAvailableSuccess value)
        checkAddressAvailableSuccess,
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
    TResult? Function(ToggleMapState value)? toggleMapState,
    TResult? Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult? Function(CheckAddressAvailableLoading value)?
        checkAddressAvailableLoading,
    TResult? Function(CheckAddressAvailableError value)?
        checkAddressAvailableError,
    TResult? Function(CheckAddressAvailableSuccess value)?
        checkAddressAvailableSuccess,
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
    TResult Function(ToggleMapState value)? toggleMapState,
    TResult Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult Function(CheckAddressAvailableLoading value)?
        checkAddressAvailableLoading,
    TResult Function(CheckAddressAvailableError value)?
        checkAddressAvailableError,
    TResult Function(CheckAddressAvailableSuccess value)?
        checkAddressAvailableSuccess,
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
abstract class _$$ToggleMapStateImplCopyWith<$Res> {
  factory _$$ToggleMapStateImplCopyWith(_$ToggleMapStateImpl value,
          $Res Function(_$ToggleMapStateImpl) then) =
      __$$ToggleMapStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MapType mapType});
}

/// @nodoc
class __$$ToggleMapStateImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$ToggleMapStateImpl>
    implements _$$ToggleMapStateImplCopyWith<$Res> {
  __$$ToggleMapStateImplCopyWithImpl(
      _$ToggleMapStateImpl _value, $Res Function(_$ToggleMapStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mapType = null,
  }) {
    return _then(_$ToggleMapStateImpl(
      null == mapType
          ? _value.mapType
          : mapType // ignore: cast_nullable_to_non_nullable
              as MapType,
    ));
  }
}

/// @nodoc

class _$ToggleMapStateImpl implements ToggleMapState {
  const _$ToggleMapStateImpl(this.mapType);

  @override
  final MapType mapType;

  @override
  String toString() {
    return 'MapState.toggleMapState(mapType: $mapType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleMapStateImpl &&
            (identical(other.mapType, mapType) || other.mapType == mapType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mapType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleMapStateImplCopyWith<_$ToggleMapStateImpl> get copyWith =>
      __$$ToggleMapStateImplCopyWithImpl<_$ToggleMapStateImpl>(
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
    required TResult Function(MapType mapType) toggleMapState,
    required TResult Function(String homeLocation) setStringHomeLocationState,
    required TResult Function() checkAddressAvailableLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        checkAddressAvailableError,
    required TResult Function(CheckLocationAvailableResponse data)
        checkAddressAvailableSuccess,
  }) {
    return toggleMapState(mapType);
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
    TResult? Function(MapType mapType)? toggleMapState,
    TResult? Function(String homeLocation)? setStringHomeLocationState,
    TResult? Function()? checkAddressAvailableLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? checkAddressAvailableError,
    TResult? Function(CheckLocationAvailableResponse data)?
        checkAddressAvailableSuccess,
  }) {
    return toggleMapState?.call(mapType);
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
    TResult Function(MapType mapType)? toggleMapState,
    TResult Function(String homeLocation)? setStringHomeLocationState,
    TResult Function()? checkAddressAvailableLoading,
    TResult Function(ApiErrorModel apiErrorModel)? checkAddressAvailableError,
    TResult Function(CheckLocationAvailableResponse data)?
        checkAddressAvailableSuccess,
    required TResult orElse(),
  }) {
    if (toggleMapState != null) {
      return toggleMapState(mapType);
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
    required TResult Function(ToggleMapState value) toggleMapState,
    required TResult Function(SetStringHomeLocationState value)
        setStringHomeLocationState,
    required TResult Function(CheckAddressAvailableLoading value)
        checkAddressAvailableLoading,
    required TResult Function(CheckAddressAvailableError value)
        checkAddressAvailableError,
    required TResult Function(CheckAddressAvailableSuccess value)
        checkAddressAvailableSuccess,
  }) {
    return toggleMapState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(SearchResults value)? searchResults,
    TResult? Function(Error value)? error,
    TResult? Function(ToggleMapState value)? toggleMapState,
    TResult? Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult? Function(CheckAddressAvailableLoading value)?
        checkAddressAvailableLoading,
    TResult? Function(CheckAddressAvailableError value)?
        checkAddressAvailableError,
    TResult? Function(CheckAddressAvailableSuccess value)?
        checkAddressAvailableSuccess,
  }) {
    return toggleMapState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SearchResults value)? searchResults,
    TResult Function(Error value)? error,
    TResult Function(ToggleMapState value)? toggleMapState,
    TResult Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult Function(CheckAddressAvailableLoading value)?
        checkAddressAvailableLoading,
    TResult Function(CheckAddressAvailableError value)?
        checkAddressAvailableError,
    TResult Function(CheckAddressAvailableSuccess value)?
        checkAddressAvailableSuccess,
    required TResult orElse(),
  }) {
    if (toggleMapState != null) {
      return toggleMapState(this);
    }
    return orElse();
  }
}

abstract class ToggleMapState implements MapState {
  const factory ToggleMapState(final MapType mapType) = _$ToggleMapStateImpl;

  MapType get mapType;
  @JsonKey(ignore: true)
  _$$ToggleMapStateImplCopyWith<_$ToggleMapStateImpl> get copyWith =>
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
    required TResult Function(MapType mapType) toggleMapState,
    required TResult Function(String homeLocation) setStringHomeLocationState,
    required TResult Function() checkAddressAvailableLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        checkAddressAvailableError,
    required TResult Function(CheckLocationAvailableResponse data)
        checkAddressAvailableSuccess,
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
    TResult? Function(MapType mapType)? toggleMapState,
    TResult? Function(String homeLocation)? setStringHomeLocationState,
    TResult? Function()? checkAddressAvailableLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? checkAddressAvailableError,
    TResult? Function(CheckLocationAvailableResponse data)?
        checkAddressAvailableSuccess,
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
    TResult Function(MapType mapType)? toggleMapState,
    TResult Function(String homeLocation)? setStringHomeLocationState,
    TResult Function()? checkAddressAvailableLoading,
    TResult Function(ApiErrorModel apiErrorModel)? checkAddressAvailableError,
    TResult Function(CheckLocationAvailableResponse data)?
        checkAddressAvailableSuccess,
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
    required TResult Function(ToggleMapState value) toggleMapState,
    required TResult Function(SetStringHomeLocationState value)
        setStringHomeLocationState,
    required TResult Function(CheckAddressAvailableLoading value)
        checkAddressAvailableLoading,
    required TResult Function(CheckAddressAvailableError value)
        checkAddressAvailableError,
    required TResult Function(CheckAddressAvailableSuccess value)
        checkAddressAvailableSuccess,
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
    TResult? Function(ToggleMapState value)? toggleMapState,
    TResult? Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult? Function(CheckAddressAvailableLoading value)?
        checkAddressAvailableLoading,
    TResult? Function(CheckAddressAvailableError value)?
        checkAddressAvailableError,
    TResult? Function(CheckAddressAvailableSuccess value)?
        checkAddressAvailableSuccess,
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
    TResult Function(ToggleMapState value)? toggleMapState,
    TResult Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult Function(CheckAddressAvailableLoading value)?
        checkAddressAvailableLoading,
    TResult Function(CheckAddressAvailableError value)?
        checkAddressAvailableError,
    TResult Function(CheckAddressAvailableSuccess value)?
        checkAddressAvailableSuccess,
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
abstract class _$$CheckAddressAvailableLoadingImplCopyWith<$Res> {
  factory _$$CheckAddressAvailableLoadingImplCopyWith(
          _$CheckAddressAvailableLoadingImpl value,
          $Res Function(_$CheckAddressAvailableLoadingImpl) then) =
      __$$CheckAddressAvailableLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckAddressAvailableLoadingImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$CheckAddressAvailableLoadingImpl>
    implements _$$CheckAddressAvailableLoadingImplCopyWith<$Res> {
  __$$CheckAddressAvailableLoadingImplCopyWithImpl(
      _$CheckAddressAvailableLoadingImpl _value,
      $Res Function(_$CheckAddressAvailableLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckAddressAvailableLoadingImpl
    implements CheckAddressAvailableLoading {
  const _$CheckAddressAvailableLoadingImpl();

  @override
  String toString() {
    return 'MapState.checkAddressAvailableLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckAddressAvailableLoadingImpl);
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
    required TResult Function(MapType mapType) toggleMapState,
    required TResult Function(String homeLocation) setStringHomeLocationState,
    required TResult Function() checkAddressAvailableLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        checkAddressAvailableError,
    required TResult Function(CheckLocationAvailableResponse data)
        checkAddressAvailableSuccess,
  }) {
    return checkAddressAvailableLoading();
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
    TResult? Function(MapType mapType)? toggleMapState,
    TResult? Function(String homeLocation)? setStringHomeLocationState,
    TResult? Function()? checkAddressAvailableLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? checkAddressAvailableError,
    TResult? Function(CheckLocationAvailableResponse data)?
        checkAddressAvailableSuccess,
  }) {
    return checkAddressAvailableLoading?.call();
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
    TResult Function(MapType mapType)? toggleMapState,
    TResult Function(String homeLocation)? setStringHomeLocationState,
    TResult Function()? checkAddressAvailableLoading,
    TResult Function(ApiErrorModel apiErrorModel)? checkAddressAvailableError,
    TResult Function(CheckLocationAvailableResponse data)?
        checkAddressAvailableSuccess,
    required TResult orElse(),
  }) {
    if (checkAddressAvailableLoading != null) {
      return checkAddressAvailableLoading();
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
    required TResult Function(ToggleMapState value) toggleMapState,
    required TResult Function(SetStringHomeLocationState value)
        setStringHomeLocationState,
    required TResult Function(CheckAddressAvailableLoading value)
        checkAddressAvailableLoading,
    required TResult Function(CheckAddressAvailableError value)
        checkAddressAvailableError,
    required TResult Function(CheckAddressAvailableSuccess value)
        checkAddressAvailableSuccess,
  }) {
    return checkAddressAvailableLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(SearchResults value)? searchResults,
    TResult? Function(Error value)? error,
    TResult? Function(ToggleMapState value)? toggleMapState,
    TResult? Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult? Function(CheckAddressAvailableLoading value)?
        checkAddressAvailableLoading,
    TResult? Function(CheckAddressAvailableError value)?
        checkAddressAvailableError,
    TResult? Function(CheckAddressAvailableSuccess value)?
        checkAddressAvailableSuccess,
  }) {
    return checkAddressAvailableLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SearchResults value)? searchResults,
    TResult Function(Error value)? error,
    TResult Function(ToggleMapState value)? toggleMapState,
    TResult Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult Function(CheckAddressAvailableLoading value)?
        checkAddressAvailableLoading,
    TResult Function(CheckAddressAvailableError value)?
        checkAddressAvailableError,
    TResult Function(CheckAddressAvailableSuccess value)?
        checkAddressAvailableSuccess,
    required TResult orElse(),
  }) {
    if (checkAddressAvailableLoading != null) {
      return checkAddressAvailableLoading(this);
    }
    return orElse();
  }
}

abstract class CheckAddressAvailableLoading implements MapState {
  const factory CheckAddressAvailableLoading() =
      _$CheckAddressAvailableLoadingImpl;
}

/// @nodoc
abstract class _$$CheckAddressAvailableErrorImplCopyWith<$Res> {
  factory _$$CheckAddressAvailableErrorImplCopyWith(
          _$CheckAddressAvailableErrorImpl value,
          $Res Function(_$CheckAddressAvailableErrorImpl) then) =
      __$$CheckAddressAvailableErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$CheckAddressAvailableErrorImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$CheckAddressAvailableErrorImpl>
    implements _$$CheckAddressAvailableErrorImplCopyWith<$Res> {
  __$$CheckAddressAvailableErrorImplCopyWithImpl(
      _$CheckAddressAvailableErrorImpl _value,
      $Res Function(_$CheckAddressAvailableErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$CheckAddressAvailableErrorImpl(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$CheckAddressAvailableErrorImpl implements CheckAddressAvailableError {
  const _$CheckAddressAvailableErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'MapState.checkAddressAvailableError(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckAddressAvailableErrorImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckAddressAvailableErrorImplCopyWith<_$CheckAddressAvailableErrorImpl>
      get copyWith => __$$CheckAddressAvailableErrorImplCopyWithImpl<
          _$CheckAddressAvailableErrorImpl>(this, _$identity);

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
    required TResult Function(MapType mapType) toggleMapState,
    required TResult Function(String homeLocation) setStringHomeLocationState,
    required TResult Function() checkAddressAvailableLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        checkAddressAvailableError,
    required TResult Function(CheckLocationAvailableResponse data)
        checkAddressAvailableSuccess,
  }) {
    return checkAddressAvailableError(apiErrorModel);
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
    TResult? Function(MapType mapType)? toggleMapState,
    TResult? Function(String homeLocation)? setStringHomeLocationState,
    TResult? Function()? checkAddressAvailableLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? checkAddressAvailableError,
    TResult? Function(CheckLocationAvailableResponse data)?
        checkAddressAvailableSuccess,
  }) {
    return checkAddressAvailableError?.call(apiErrorModel);
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
    TResult Function(MapType mapType)? toggleMapState,
    TResult Function(String homeLocation)? setStringHomeLocationState,
    TResult Function()? checkAddressAvailableLoading,
    TResult Function(ApiErrorModel apiErrorModel)? checkAddressAvailableError,
    TResult Function(CheckLocationAvailableResponse data)?
        checkAddressAvailableSuccess,
    required TResult orElse(),
  }) {
    if (checkAddressAvailableError != null) {
      return checkAddressAvailableError(apiErrorModel);
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
    required TResult Function(ToggleMapState value) toggleMapState,
    required TResult Function(SetStringHomeLocationState value)
        setStringHomeLocationState,
    required TResult Function(CheckAddressAvailableLoading value)
        checkAddressAvailableLoading,
    required TResult Function(CheckAddressAvailableError value)
        checkAddressAvailableError,
    required TResult Function(CheckAddressAvailableSuccess value)
        checkAddressAvailableSuccess,
  }) {
    return checkAddressAvailableError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(SearchResults value)? searchResults,
    TResult? Function(Error value)? error,
    TResult? Function(ToggleMapState value)? toggleMapState,
    TResult? Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult? Function(CheckAddressAvailableLoading value)?
        checkAddressAvailableLoading,
    TResult? Function(CheckAddressAvailableError value)?
        checkAddressAvailableError,
    TResult? Function(CheckAddressAvailableSuccess value)?
        checkAddressAvailableSuccess,
  }) {
    return checkAddressAvailableError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SearchResults value)? searchResults,
    TResult Function(Error value)? error,
    TResult Function(ToggleMapState value)? toggleMapState,
    TResult Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult Function(CheckAddressAvailableLoading value)?
        checkAddressAvailableLoading,
    TResult Function(CheckAddressAvailableError value)?
        checkAddressAvailableError,
    TResult Function(CheckAddressAvailableSuccess value)?
        checkAddressAvailableSuccess,
    required TResult orElse(),
  }) {
    if (checkAddressAvailableError != null) {
      return checkAddressAvailableError(this);
    }
    return orElse();
  }
}

abstract class CheckAddressAvailableError implements MapState {
  const factory CheckAddressAvailableError(final ApiErrorModel apiErrorModel) =
      _$CheckAddressAvailableErrorImpl;

  ApiErrorModel get apiErrorModel;
  @JsonKey(ignore: true)
  _$$CheckAddressAvailableErrorImplCopyWith<_$CheckAddressAvailableErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckAddressAvailableSuccessImplCopyWith<$Res> {
  factory _$$CheckAddressAvailableSuccessImplCopyWith(
          _$CheckAddressAvailableSuccessImpl value,
          $Res Function(_$CheckAddressAvailableSuccessImpl) then) =
      __$$CheckAddressAvailableSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CheckLocationAvailableResponse data});
}

/// @nodoc
class __$$CheckAddressAvailableSuccessImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$CheckAddressAvailableSuccessImpl>
    implements _$$CheckAddressAvailableSuccessImplCopyWith<$Res> {
  __$$CheckAddressAvailableSuccessImplCopyWithImpl(
      _$CheckAddressAvailableSuccessImpl _value,
      $Res Function(_$CheckAddressAvailableSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CheckAddressAvailableSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CheckLocationAvailableResponse,
    ));
  }
}

/// @nodoc

class _$CheckAddressAvailableSuccessImpl
    implements CheckAddressAvailableSuccess {
  const _$CheckAddressAvailableSuccessImpl(this.data);

  @override
  final CheckLocationAvailableResponse data;

  @override
  String toString() {
    return 'MapState.checkAddressAvailableSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckAddressAvailableSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckAddressAvailableSuccessImplCopyWith<
          _$CheckAddressAvailableSuccessImpl>
      get copyWith => __$$CheckAddressAvailableSuccessImplCopyWithImpl<
          _$CheckAddressAvailableSuccessImpl>(this, _$identity);

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
    required TResult Function(MapType mapType) toggleMapState,
    required TResult Function(String homeLocation) setStringHomeLocationState,
    required TResult Function() checkAddressAvailableLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        checkAddressAvailableError,
    required TResult Function(CheckLocationAvailableResponse data)
        checkAddressAvailableSuccess,
  }) {
    return checkAddressAvailableSuccess(data);
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
    TResult? Function(MapType mapType)? toggleMapState,
    TResult? Function(String homeLocation)? setStringHomeLocationState,
    TResult? Function()? checkAddressAvailableLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? checkAddressAvailableError,
    TResult? Function(CheckLocationAvailableResponse data)?
        checkAddressAvailableSuccess,
  }) {
    return checkAddressAvailableSuccess?.call(data);
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
    TResult Function(MapType mapType)? toggleMapState,
    TResult Function(String homeLocation)? setStringHomeLocationState,
    TResult Function()? checkAddressAvailableLoading,
    TResult Function(ApiErrorModel apiErrorModel)? checkAddressAvailableError,
    TResult Function(CheckLocationAvailableResponse data)?
        checkAddressAvailableSuccess,
    required TResult orElse(),
  }) {
    if (checkAddressAvailableSuccess != null) {
      return checkAddressAvailableSuccess(data);
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
    required TResult Function(ToggleMapState value) toggleMapState,
    required TResult Function(SetStringHomeLocationState value)
        setStringHomeLocationState,
    required TResult Function(CheckAddressAvailableLoading value)
        checkAddressAvailableLoading,
    required TResult Function(CheckAddressAvailableError value)
        checkAddressAvailableError,
    required TResult Function(CheckAddressAvailableSuccess value)
        checkAddressAvailableSuccess,
  }) {
    return checkAddressAvailableSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(SearchResults value)? searchResults,
    TResult? Function(Error value)? error,
    TResult? Function(ToggleMapState value)? toggleMapState,
    TResult? Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult? Function(CheckAddressAvailableLoading value)?
        checkAddressAvailableLoading,
    TResult? Function(CheckAddressAvailableError value)?
        checkAddressAvailableError,
    TResult? Function(CheckAddressAvailableSuccess value)?
        checkAddressAvailableSuccess,
  }) {
    return checkAddressAvailableSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SearchResults value)? searchResults,
    TResult Function(Error value)? error,
    TResult Function(ToggleMapState value)? toggleMapState,
    TResult Function(SetStringHomeLocationState value)?
        setStringHomeLocationState,
    TResult Function(CheckAddressAvailableLoading value)?
        checkAddressAvailableLoading,
    TResult Function(CheckAddressAvailableError value)?
        checkAddressAvailableError,
    TResult Function(CheckAddressAvailableSuccess value)?
        checkAddressAvailableSuccess,
    required TResult orElse(),
  }) {
    if (checkAddressAvailableSuccess != null) {
      return checkAddressAvailableSuccess(this);
    }
    return orElse();
  }
}

abstract class CheckAddressAvailableSuccess implements MapState {
  const factory CheckAddressAvailableSuccess(
          final CheckLocationAvailableResponse data) =
      _$CheckAddressAvailableSuccessImpl;

  CheckLocationAvailableResponse get data;
  @JsonKey(ignore: true)
  _$$CheckAddressAvailableSuccessImplCopyWith<
          _$CheckAddressAvailableSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
