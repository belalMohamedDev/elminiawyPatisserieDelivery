// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BannerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getBannersLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getBannersError,
    required TResult Function(BannerResponse data) getBannersSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getBannersLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getBannersError,
    TResult? Function(BannerResponse data)? getBannersSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getBannersLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getBannersError,
    TResult Function(BannerResponse data)? getBannersSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetBannersLoading value) getBannersLoading,
    required TResult Function(GetBannersError value) getBannersError,
    required TResult Function(GetBannersSuccess value) getBannersSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetBannersLoading value)? getBannersLoading,
    TResult? Function(GetBannersError value)? getBannersError,
    TResult? Function(GetBannersSuccess value)? getBannersSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetBannersLoading value)? getBannersLoading,
    TResult Function(GetBannersError value)? getBannersError,
    TResult Function(GetBannersSuccess value)? getBannersSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerStateCopyWith<$Res> {
  factory $BannerStateCopyWith(
          BannerState value, $Res Function(BannerState) then) =
      _$BannerStateCopyWithImpl<$Res, BannerState>;
}

/// @nodoc
class _$BannerStateCopyWithImpl<$Res, $Val extends BannerState>
    implements $BannerStateCopyWith<$Res> {
  _$BannerStateCopyWithImpl(this._value, this._then);

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
    extends _$BannerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'BannerState.initial()';
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
    required TResult Function() getBannersLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getBannersError,
    required TResult Function(BannerResponse data) getBannersSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getBannersLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getBannersError,
    TResult? Function(BannerResponse data)? getBannersSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getBannersLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getBannersError,
    TResult Function(BannerResponse data)? getBannersSuccess,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(GetBannersLoading value) getBannersLoading,
    required TResult Function(GetBannersError value) getBannersError,
    required TResult Function(GetBannersSuccess value) getBannersSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetBannersLoading value)? getBannersLoading,
    TResult? Function(GetBannersError value)? getBannersError,
    TResult? Function(GetBannersSuccess value)? getBannersSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetBannersLoading value)? getBannersLoading,
    TResult Function(GetBannersError value)? getBannersError,
    TResult Function(GetBannersSuccess value)? getBannersSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BannerState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GetBannersLoadingImplCopyWith<$Res> {
  factory _$$GetBannersLoadingImplCopyWith(_$GetBannersLoadingImpl value,
          $Res Function(_$GetBannersLoadingImpl) then) =
      __$$GetBannersLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBannersLoadingImplCopyWithImpl<$Res>
    extends _$BannerStateCopyWithImpl<$Res, _$GetBannersLoadingImpl>
    implements _$$GetBannersLoadingImplCopyWith<$Res> {
  __$$GetBannersLoadingImplCopyWithImpl(_$GetBannersLoadingImpl _value,
      $Res Function(_$GetBannersLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetBannersLoadingImpl implements GetBannersLoading {
  const _$GetBannersLoadingImpl();

  @override
  String toString() {
    return 'BannerState.getBannersLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetBannersLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getBannersLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getBannersError,
    required TResult Function(BannerResponse data) getBannersSuccess,
  }) {
    return getBannersLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getBannersLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getBannersError,
    TResult? Function(BannerResponse data)? getBannersSuccess,
  }) {
    return getBannersLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getBannersLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getBannersError,
    TResult Function(BannerResponse data)? getBannersSuccess,
    required TResult orElse(),
  }) {
    if (getBannersLoading != null) {
      return getBannersLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetBannersLoading value) getBannersLoading,
    required TResult Function(GetBannersError value) getBannersError,
    required TResult Function(GetBannersSuccess value) getBannersSuccess,
  }) {
    return getBannersLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetBannersLoading value)? getBannersLoading,
    TResult? Function(GetBannersError value)? getBannersError,
    TResult? Function(GetBannersSuccess value)? getBannersSuccess,
  }) {
    return getBannersLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetBannersLoading value)? getBannersLoading,
    TResult Function(GetBannersError value)? getBannersError,
    TResult Function(GetBannersSuccess value)? getBannersSuccess,
    required TResult orElse(),
  }) {
    if (getBannersLoading != null) {
      return getBannersLoading(this);
    }
    return orElse();
  }
}

abstract class GetBannersLoading implements BannerState {
  const factory GetBannersLoading() = _$GetBannersLoadingImpl;
}

/// @nodoc
abstract class _$$GetBannersErrorImplCopyWith<$Res> {
  factory _$$GetBannersErrorImplCopyWith(_$GetBannersErrorImpl value,
          $Res Function(_$GetBannersErrorImpl) then) =
      __$$GetBannersErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$GetBannersErrorImplCopyWithImpl<$Res>
    extends _$BannerStateCopyWithImpl<$Res, _$GetBannersErrorImpl>
    implements _$$GetBannersErrorImplCopyWith<$Res> {
  __$$GetBannersErrorImplCopyWithImpl(
      _$GetBannersErrorImpl _value, $Res Function(_$GetBannersErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$GetBannersErrorImpl(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$GetBannersErrorImpl implements GetBannersError {
  const _$GetBannersErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'BannerState.getBannersError(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBannersErrorImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBannersErrorImplCopyWith<_$GetBannersErrorImpl> get copyWith =>
      __$$GetBannersErrorImplCopyWithImpl<_$GetBannersErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getBannersLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getBannersError,
    required TResult Function(BannerResponse data) getBannersSuccess,
  }) {
    return getBannersError(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getBannersLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getBannersError,
    TResult? Function(BannerResponse data)? getBannersSuccess,
  }) {
    return getBannersError?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getBannersLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getBannersError,
    TResult Function(BannerResponse data)? getBannersSuccess,
    required TResult orElse(),
  }) {
    if (getBannersError != null) {
      return getBannersError(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetBannersLoading value) getBannersLoading,
    required TResult Function(GetBannersError value) getBannersError,
    required TResult Function(GetBannersSuccess value) getBannersSuccess,
  }) {
    return getBannersError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetBannersLoading value)? getBannersLoading,
    TResult? Function(GetBannersError value)? getBannersError,
    TResult? Function(GetBannersSuccess value)? getBannersSuccess,
  }) {
    return getBannersError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetBannersLoading value)? getBannersLoading,
    TResult Function(GetBannersError value)? getBannersError,
    TResult Function(GetBannersSuccess value)? getBannersSuccess,
    required TResult orElse(),
  }) {
    if (getBannersError != null) {
      return getBannersError(this);
    }
    return orElse();
  }
}

abstract class GetBannersError implements BannerState {
  const factory GetBannersError(final ApiErrorModel apiErrorModel) =
      _$GetBannersErrorImpl;

  ApiErrorModel get apiErrorModel;
  @JsonKey(ignore: true)
  _$$GetBannersErrorImplCopyWith<_$GetBannersErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBannersSuccessImplCopyWith<$Res> {
  factory _$$GetBannersSuccessImplCopyWith(_$GetBannersSuccessImpl value,
          $Res Function(_$GetBannersSuccessImpl) then) =
      __$$GetBannersSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BannerResponse data});
}

/// @nodoc
class __$$GetBannersSuccessImplCopyWithImpl<$Res>
    extends _$BannerStateCopyWithImpl<$Res, _$GetBannersSuccessImpl>
    implements _$$GetBannersSuccessImplCopyWith<$Res> {
  __$$GetBannersSuccessImplCopyWithImpl(_$GetBannersSuccessImpl _value,
      $Res Function(_$GetBannersSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GetBannersSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BannerResponse,
    ));
  }
}

/// @nodoc

class _$GetBannersSuccessImpl implements GetBannersSuccess {
  const _$GetBannersSuccessImpl(this.data);

  @override
  final BannerResponse data;

  @override
  String toString() {
    return 'BannerState.getBannersSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBannersSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBannersSuccessImplCopyWith<_$GetBannersSuccessImpl> get copyWith =>
      __$$GetBannersSuccessImplCopyWithImpl<_$GetBannersSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getBannersLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getBannersError,
    required TResult Function(BannerResponse data) getBannersSuccess,
  }) {
    return getBannersSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getBannersLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getBannersError,
    TResult? Function(BannerResponse data)? getBannersSuccess,
  }) {
    return getBannersSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getBannersLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getBannersError,
    TResult Function(BannerResponse data)? getBannersSuccess,
    required TResult orElse(),
  }) {
    if (getBannersSuccess != null) {
      return getBannersSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetBannersLoading value) getBannersLoading,
    required TResult Function(GetBannersError value) getBannersError,
    required TResult Function(GetBannersSuccess value) getBannersSuccess,
  }) {
    return getBannersSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetBannersLoading value)? getBannersLoading,
    TResult? Function(GetBannersError value)? getBannersError,
    TResult? Function(GetBannersSuccess value)? getBannersSuccess,
  }) {
    return getBannersSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetBannersLoading value)? getBannersLoading,
    TResult Function(GetBannersError value)? getBannersError,
    TResult Function(GetBannersSuccess value)? getBannersSuccess,
    required TResult orElse(),
  }) {
    if (getBannersSuccess != null) {
      return getBannersSuccess(this);
    }
    return orElse();
  }
}

abstract class GetBannersSuccess implements BannerState {
  const factory GetBannersSuccess(final BannerResponse data) =
      _$GetBannersSuccessImpl;

  BannerResponse get data;
  @JsonKey(ignore: true)
  _$$GetBannersSuccessImplCopyWith<_$GetBannersSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
