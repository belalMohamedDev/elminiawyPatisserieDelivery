// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wish_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WishListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getWishListLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getWishListError,
    required TResult Function(WishListProduct data) getWishListSuccess,
    required TResult Function() addOrRemoveProductFromWishListLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        addOrRemoveProductFromWishListError,
    required TResult Function(WishListProduct data)
        addOrRemoveProductFromWishListSuccess,
    required TResult Function(Map<String, bool> favorites) updateFavoriteState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getWishListLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getWishListError,
    TResult? Function(WishListProduct data)? getWishListSuccess,
    TResult? Function()? addOrRemoveProductFromWishListLoading,
    TResult? Function(ApiErrorModel apiErrorModel)?
        addOrRemoveProductFromWishListError,
    TResult? Function(WishListProduct data)?
        addOrRemoveProductFromWishListSuccess,
    TResult? Function(Map<String, bool> favorites)? updateFavoriteState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getWishListLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getWishListError,
    TResult Function(WishListProduct data)? getWishListSuccess,
    TResult Function()? addOrRemoveProductFromWishListLoading,
    TResult Function(ApiErrorModel apiErrorModel)?
        addOrRemoveProductFromWishListError,
    TResult Function(WishListProduct data)?
        addOrRemoveProductFromWishListSuccess,
    TResult Function(Map<String, bool> favorites)? updateFavoriteState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetWishListLoading value) getWishListLoading,
    required TResult Function(GetWishListError value) getWishListError,
    required TResult Function(GetWishListSuccess value) getWishListSuccess,
    required TResult Function(AddOrRemoveProductFromWishListLoading value)
        addOrRemoveProductFromWishListLoading,
    required TResult Function(AddOrRemoveProductFromWishListError value)
        addOrRemoveProductFromWishListError,
    required TResult Function(AddOrRemoveProductFromWishListSuccess value)
        addOrRemoveProductFromWishListSuccess,
    required TResult Function(_UpdateFavoriteState value) updateFavoriteState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetWishListLoading value)? getWishListLoading,
    TResult? Function(GetWishListError value)? getWishListError,
    TResult? Function(GetWishListSuccess value)? getWishListSuccess,
    TResult? Function(AddOrRemoveProductFromWishListLoading value)?
        addOrRemoveProductFromWishListLoading,
    TResult? Function(AddOrRemoveProductFromWishListError value)?
        addOrRemoveProductFromWishListError,
    TResult? Function(AddOrRemoveProductFromWishListSuccess value)?
        addOrRemoveProductFromWishListSuccess,
    TResult? Function(_UpdateFavoriteState value)? updateFavoriteState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetWishListLoading value)? getWishListLoading,
    TResult Function(GetWishListError value)? getWishListError,
    TResult Function(GetWishListSuccess value)? getWishListSuccess,
    TResult Function(AddOrRemoveProductFromWishListLoading value)?
        addOrRemoveProductFromWishListLoading,
    TResult Function(AddOrRemoveProductFromWishListError value)?
        addOrRemoveProductFromWishListError,
    TResult Function(AddOrRemoveProductFromWishListSuccess value)?
        addOrRemoveProductFromWishListSuccess,
    TResult Function(_UpdateFavoriteState value)? updateFavoriteState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishListStateCopyWith<$Res> {
  factory $WishListStateCopyWith(
          WishListState value, $Res Function(WishListState) then) =
      _$WishListStateCopyWithImpl<$Res, WishListState>;
}

/// @nodoc
class _$WishListStateCopyWithImpl<$Res, $Val extends WishListState>
    implements $WishListStateCopyWith<$Res> {
  _$WishListStateCopyWithImpl(this._value, this._then);

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
    extends _$WishListStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'WishListState.initial()';
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
    required TResult Function() getWishListLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getWishListError,
    required TResult Function(WishListProduct data) getWishListSuccess,
    required TResult Function() addOrRemoveProductFromWishListLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        addOrRemoveProductFromWishListError,
    required TResult Function(WishListProduct data)
        addOrRemoveProductFromWishListSuccess,
    required TResult Function(Map<String, bool> favorites) updateFavoriteState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getWishListLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getWishListError,
    TResult? Function(WishListProduct data)? getWishListSuccess,
    TResult? Function()? addOrRemoveProductFromWishListLoading,
    TResult? Function(ApiErrorModel apiErrorModel)?
        addOrRemoveProductFromWishListError,
    TResult? Function(WishListProduct data)?
        addOrRemoveProductFromWishListSuccess,
    TResult? Function(Map<String, bool> favorites)? updateFavoriteState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getWishListLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getWishListError,
    TResult Function(WishListProduct data)? getWishListSuccess,
    TResult Function()? addOrRemoveProductFromWishListLoading,
    TResult Function(ApiErrorModel apiErrorModel)?
        addOrRemoveProductFromWishListError,
    TResult Function(WishListProduct data)?
        addOrRemoveProductFromWishListSuccess,
    TResult Function(Map<String, bool> favorites)? updateFavoriteState,
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
    required TResult Function(GetWishListLoading value) getWishListLoading,
    required TResult Function(GetWishListError value) getWishListError,
    required TResult Function(GetWishListSuccess value) getWishListSuccess,
    required TResult Function(AddOrRemoveProductFromWishListLoading value)
        addOrRemoveProductFromWishListLoading,
    required TResult Function(AddOrRemoveProductFromWishListError value)
        addOrRemoveProductFromWishListError,
    required TResult Function(AddOrRemoveProductFromWishListSuccess value)
        addOrRemoveProductFromWishListSuccess,
    required TResult Function(_UpdateFavoriteState value) updateFavoriteState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetWishListLoading value)? getWishListLoading,
    TResult? Function(GetWishListError value)? getWishListError,
    TResult? Function(GetWishListSuccess value)? getWishListSuccess,
    TResult? Function(AddOrRemoveProductFromWishListLoading value)?
        addOrRemoveProductFromWishListLoading,
    TResult? Function(AddOrRemoveProductFromWishListError value)?
        addOrRemoveProductFromWishListError,
    TResult? Function(AddOrRemoveProductFromWishListSuccess value)?
        addOrRemoveProductFromWishListSuccess,
    TResult? Function(_UpdateFavoriteState value)? updateFavoriteState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetWishListLoading value)? getWishListLoading,
    TResult Function(GetWishListError value)? getWishListError,
    TResult Function(GetWishListSuccess value)? getWishListSuccess,
    TResult Function(AddOrRemoveProductFromWishListLoading value)?
        addOrRemoveProductFromWishListLoading,
    TResult Function(AddOrRemoveProductFromWishListError value)?
        addOrRemoveProductFromWishListError,
    TResult Function(AddOrRemoveProductFromWishListSuccess value)?
        addOrRemoveProductFromWishListSuccess,
    TResult Function(_UpdateFavoriteState value)? updateFavoriteState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WishListState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GetWishListLoadingImplCopyWith<$Res> {
  factory _$$GetWishListLoadingImplCopyWith(_$GetWishListLoadingImpl value,
          $Res Function(_$GetWishListLoadingImpl) then) =
      __$$GetWishListLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetWishListLoadingImplCopyWithImpl<$Res>
    extends _$WishListStateCopyWithImpl<$Res, _$GetWishListLoadingImpl>
    implements _$$GetWishListLoadingImplCopyWith<$Res> {
  __$$GetWishListLoadingImplCopyWithImpl(_$GetWishListLoadingImpl _value,
      $Res Function(_$GetWishListLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetWishListLoadingImpl implements GetWishListLoading {
  const _$GetWishListLoadingImpl();

  @override
  String toString() {
    return 'WishListState.getWishListLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetWishListLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getWishListLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getWishListError,
    required TResult Function(WishListProduct data) getWishListSuccess,
    required TResult Function() addOrRemoveProductFromWishListLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        addOrRemoveProductFromWishListError,
    required TResult Function(WishListProduct data)
        addOrRemoveProductFromWishListSuccess,
    required TResult Function(Map<String, bool> favorites) updateFavoriteState,
  }) {
    return getWishListLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getWishListLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getWishListError,
    TResult? Function(WishListProduct data)? getWishListSuccess,
    TResult? Function()? addOrRemoveProductFromWishListLoading,
    TResult? Function(ApiErrorModel apiErrorModel)?
        addOrRemoveProductFromWishListError,
    TResult? Function(WishListProduct data)?
        addOrRemoveProductFromWishListSuccess,
    TResult? Function(Map<String, bool> favorites)? updateFavoriteState,
  }) {
    return getWishListLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getWishListLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getWishListError,
    TResult Function(WishListProduct data)? getWishListSuccess,
    TResult Function()? addOrRemoveProductFromWishListLoading,
    TResult Function(ApiErrorModel apiErrorModel)?
        addOrRemoveProductFromWishListError,
    TResult Function(WishListProduct data)?
        addOrRemoveProductFromWishListSuccess,
    TResult Function(Map<String, bool> favorites)? updateFavoriteState,
    required TResult orElse(),
  }) {
    if (getWishListLoading != null) {
      return getWishListLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetWishListLoading value) getWishListLoading,
    required TResult Function(GetWishListError value) getWishListError,
    required TResult Function(GetWishListSuccess value) getWishListSuccess,
    required TResult Function(AddOrRemoveProductFromWishListLoading value)
        addOrRemoveProductFromWishListLoading,
    required TResult Function(AddOrRemoveProductFromWishListError value)
        addOrRemoveProductFromWishListError,
    required TResult Function(AddOrRemoveProductFromWishListSuccess value)
        addOrRemoveProductFromWishListSuccess,
    required TResult Function(_UpdateFavoriteState value) updateFavoriteState,
  }) {
    return getWishListLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetWishListLoading value)? getWishListLoading,
    TResult? Function(GetWishListError value)? getWishListError,
    TResult? Function(GetWishListSuccess value)? getWishListSuccess,
    TResult? Function(AddOrRemoveProductFromWishListLoading value)?
        addOrRemoveProductFromWishListLoading,
    TResult? Function(AddOrRemoveProductFromWishListError value)?
        addOrRemoveProductFromWishListError,
    TResult? Function(AddOrRemoveProductFromWishListSuccess value)?
        addOrRemoveProductFromWishListSuccess,
    TResult? Function(_UpdateFavoriteState value)? updateFavoriteState,
  }) {
    return getWishListLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetWishListLoading value)? getWishListLoading,
    TResult Function(GetWishListError value)? getWishListError,
    TResult Function(GetWishListSuccess value)? getWishListSuccess,
    TResult Function(AddOrRemoveProductFromWishListLoading value)?
        addOrRemoveProductFromWishListLoading,
    TResult Function(AddOrRemoveProductFromWishListError value)?
        addOrRemoveProductFromWishListError,
    TResult Function(AddOrRemoveProductFromWishListSuccess value)?
        addOrRemoveProductFromWishListSuccess,
    TResult Function(_UpdateFavoriteState value)? updateFavoriteState,
    required TResult orElse(),
  }) {
    if (getWishListLoading != null) {
      return getWishListLoading(this);
    }
    return orElse();
  }
}

abstract class GetWishListLoading implements WishListState {
  const factory GetWishListLoading() = _$GetWishListLoadingImpl;
}

/// @nodoc
abstract class _$$GetWishListErrorImplCopyWith<$Res> {
  factory _$$GetWishListErrorImplCopyWith(_$GetWishListErrorImpl value,
          $Res Function(_$GetWishListErrorImpl) then) =
      __$$GetWishListErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$GetWishListErrorImplCopyWithImpl<$Res>
    extends _$WishListStateCopyWithImpl<$Res, _$GetWishListErrorImpl>
    implements _$$GetWishListErrorImplCopyWith<$Res> {
  __$$GetWishListErrorImplCopyWithImpl(_$GetWishListErrorImpl _value,
      $Res Function(_$GetWishListErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$GetWishListErrorImpl(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$GetWishListErrorImpl implements GetWishListError {
  const _$GetWishListErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'WishListState.getWishListError(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWishListErrorImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWishListErrorImplCopyWith<_$GetWishListErrorImpl> get copyWith =>
      __$$GetWishListErrorImplCopyWithImpl<_$GetWishListErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getWishListLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getWishListError,
    required TResult Function(WishListProduct data) getWishListSuccess,
    required TResult Function() addOrRemoveProductFromWishListLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        addOrRemoveProductFromWishListError,
    required TResult Function(WishListProduct data)
        addOrRemoveProductFromWishListSuccess,
    required TResult Function(Map<String, bool> favorites) updateFavoriteState,
  }) {
    return getWishListError(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getWishListLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getWishListError,
    TResult? Function(WishListProduct data)? getWishListSuccess,
    TResult? Function()? addOrRemoveProductFromWishListLoading,
    TResult? Function(ApiErrorModel apiErrorModel)?
        addOrRemoveProductFromWishListError,
    TResult? Function(WishListProduct data)?
        addOrRemoveProductFromWishListSuccess,
    TResult? Function(Map<String, bool> favorites)? updateFavoriteState,
  }) {
    return getWishListError?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getWishListLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getWishListError,
    TResult Function(WishListProduct data)? getWishListSuccess,
    TResult Function()? addOrRemoveProductFromWishListLoading,
    TResult Function(ApiErrorModel apiErrorModel)?
        addOrRemoveProductFromWishListError,
    TResult Function(WishListProduct data)?
        addOrRemoveProductFromWishListSuccess,
    TResult Function(Map<String, bool> favorites)? updateFavoriteState,
    required TResult orElse(),
  }) {
    if (getWishListError != null) {
      return getWishListError(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetWishListLoading value) getWishListLoading,
    required TResult Function(GetWishListError value) getWishListError,
    required TResult Function(GetWishListSuccess value) getWishListSuccess,
    required TResult Function(AddOrRemoveProductFromWishListLoading value)
        addOrRemoveProductFromWishListLoading,
    required TResult Function(AddOrRemoveProductFromWishListError value)
        addOrRemoveProductFromWishListError,
    required TResult Function(AddOrRemoveProductFromWishListSuccess value)
        addOrRemoveProductFromWishListSuccess,
    required TResult Function(_UpdateFavoriteState value) updateFavoriteState,
  }) {
    return getWishListError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetWishListLoading value)? getWishListLoading,
    TResult? Function(GetWishListError value)? getWishListError,
    TResult? Function(GetWishListSuccess value)? getWishListSuccess,
    TResult? Function(AddOrRemoveProductFromWishListLoading value)?
        addOrRemoveProductFromWishListLoading,
    TResult? Function(AddOrRemoveProductFromWishListError value)?
        addOrRemoveProductFromWishListError,
    TResult? Function(AddOrRemoveProductFromWishListSuccess value)?
        addOrRemoveProductFromWishListSuccess,
    TResult? Function(_UpdateFavoriteState value)? updateFavoriteState,
  }) {
    return getWishListError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetWishListLoading value)? getWishListLoading,
    TResult Function(GetWishListError value)? getWishListError,
    TResult Function(GetWishListSuccess value)? getWishListSuccess,
    TResult Function(AddOrRemoveProductFromWishListLoading value)?
        addOrRemoveProductFromWishListLoading,
    TResult Function(AddOrRemoveProductFromWishListError value)?
        addOrRemoveProductFromWishListError,
    TResult Function(AddOrRemoveProductFromWishListSuccess value)?
        addOrRemoveProductFromWishListSuccess,
    TResult Function(_UpdateFavoriteState value)? updateFavoriteState,
    required TResult orElse(),
  }) {
    if (getWishListError != null) {
      return getWishListError(this);
    }
    return orElse();
  }
}

abstract class GetWishListError implements WishListState {
  const factory GetWishListError(final ApiErrorModel apiErrorModel) =
      _$GetWishListErrorImpl;

  ApiErrorModel get apiErrorModel;
  @JsonKey(ignore: true)
  _$$GetWishListErrorImplCopyWith<_$GetWishListErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetWishListSuccessImplCopyWith<$Res> {
  factory _$$GetWishListSuccessImplCopyWith(_$GetWishListSuccessImpl value,
          $Res Function(_$GetWishListSuccessImpl) then) =
      __$$GetWishListSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WishListProduct data});
}

/// @nodoc
class __$$GetWishListSuccessImplCopyWithImpl<$Res>
    extends _$WishListStateCopyWithImpl<$Res, _$GetWishListSuccessImpl>
    implements _$$GetWishListSuccessImplCopyWith<$Res> {
  __$$GetWishListSuccessImplCopyWithImpl(_$GetWishListSuccessImpl _value,
      $Res Function(_$GetWishListSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GetWishListSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WishListProduct,
    ));
  }
}

/// @nodoc

class _$GetWishListSuccessImpl implements GetWishListSuccess {
  const _$GetWishListSuccessImpl(this.data);

  @override
  final WishListProduct data;

  @override
  String toString() {
    return 'WishListState.getWishListSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWishListSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWishListSuccessImplCopyWith<_$GetWishListSuccessImpl> get copyWith =>
      __$$GetWishListSuccessImplCopyWithImpl<_$GetWishListSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getWishListLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getWishListError,
    required TResult Function(WishListProduct data) getWishListSuccess,
    required TResult Function() addOrRemoveProductFromWishListLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        addOrRemoveProductFromWishListError,
    required TResult Function(WishListProduct data)
        addOrRemoveProductFromWishListSuccess,
    required TResult Function(Map<String, bool> favorites) updateFavoriteState,
  }) {
    return getWishListSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getWishListLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getWishListError,
    TResult? Function(WishListProduct data)? getWishListSuccess,
    TResult? Function()? addOrRemoveProductFromWishListLoading,
    TResult? Function(ApiErrorModel apiErrorModel)?
        addOrRemoveProductFromWishListError,
    TResult? Function(WishListProduct data)?
        addOrRemoveProductFromWishListSuccess,
    TResult? Function(Map<String, bool> favorites)? updateFavoriteState,
  }) {
    return getWishListSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getWishListLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getWishListError,
    TResult Function(WishListProduct data)? getWishListSuccess,
    TResult Function()? addOrRemoveProductFromWishListLoading,
    TResult Function(ApiErrorModel apiErrorModel)?
        addOrRemoveProductFromWishListError,
    TResult Function(WishListProduct data)?
        addOrRemoveProductFromWishListSuccess,
    TResult Function(Map<String, bool> favorites)? updateFavoriteState,
    required TResult orElse(),
  }) {
    if (getWishListSuccess != null) {
      return getWishListSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetWishListLoading value) getWishListLoading,
    required TResult Function(GetWishListError value) getWishListError,
    required TResult Function(GetWishListSuccess value) getWishListSuccess,
    required TResult Function(AddOrRemoveProductFromWishListLoading value)
        addOrRemoveProductFromWishListLoading,
    required TResult Function(AddOrRemoveProductFromWishListError value)
        addOrRemoveProductFromWishListError,
    required TResult Function(AddOrRemoveProductFromWishListSuccess value)
        addOrRemoveProductFromWishListSuccess,
    required TResult Function(_UpdateFavoriteState value) updateFavoriteState,
  }) {
    return getWishListSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetWishListLoading value)? getWishListLoading,
    TResult? Function(GetWishListError value)? getWishListError,
    TResult? Function(GetWishListSuccess value)? getWishListSuccess,
    TResult? Function(AddOrRemoveProductFromWishListLoading value)?
        addOrRemoveProductFromWishListLoading,
    TResult? Function(AddOrRemoveProductFromWishListError value)?
        addOrRemoveProductFromWishListError,
    TResult? Function(AddOrRemoveProductFromWishListSuccess value)?
        addOrRemoveProductFromWishListSuccess,
    TResult? Function(_UpdateFavoriteState value)? updateFavoriteState,
  }) {
    return getWishListSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetWishListLoading value)? getWishListLoading,
    TResult Function(GetWishListError value)? getWishListError,
    TResult Function(GetWishListSuccess value)? getWishListSuccess,
    TResult Function(AddOrRemoveProductFromWishListLoading value)?
        addOrRemoveProductFromWishListLoading,
    TResult Function(AddOrRemoveProductFromWishListError value)?
        addOrRemoveProductFromWishListError,
    TResult Function(AddOrRemoveProductFromWishListSuccess value)?
        addOrRemoveProductFromWishListSuccess,
    TResult Function(_UpdateFavoriteState value)? updateFavoriteState,
    required TResult orElse(),
  }) {
    if (getWishListSuccess != null) {
      return getWishListSuccess(this);
    }
    return orElse();
  }
}

abstract class GetWishListSuccess implements WishListState {
  const factory GetWishListSuccess(final WishListProduct data) =
      _$GetWishListSuccessImpl;

  WishListProduct get data;
  @JsonKey(ignore: true)
  _$$GetWishListSuccessImplCopyWith<_$GetWishListSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddOrRemoveProductFromWishListLoadingImplCopyWith<$Res> {
  factory _$$AddOrRemoveProductFromWishListLoadingImplCopyWith(
          _$AddOrRemoveProductFromWishListLoadingImpl value,
          $Res Function(_$AddOrRemoveProductFromWishListLoadingImpl) then) =
      __$$AddOrRemoveProductFromWishListLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddOrRemoveProductFromWishListLoadingImplCopyWithImpl<$Res>
    extends _$WishListStateCopyWithImpl<$Res,
        _$AddOrRemoveProductFromWishListLoadingImpl>
    implements _$$AddOrRemoveProductFromWishListLoadingImplCopyWith<$Res> {
  __$$AddOrRemoveProductFromWishListLoadingImplCopyWithImpl(
      _$AddOrRemoveProductFromWishListLoadingImpl _value,
      $Res Function(_$AddOrRemoveProductFromWishListLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddOrRemoveProductFromWishListLoadingImpl
    implements AddOrRemoveProductFromWishListLoading {
  const _$AddOrRemoveProductFromWishListLoadingImpl();

  @override
  String toString() {
    return 'WishListState.addOrRemoveProductFromWishListLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddOrRemoveProductFromWishListLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getWishListLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getWishListError,
    required TResult Function(WishListProduct data) getWishListSuccess,
    required TResult Function() addOrRemoveProductFromWishListLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        addOrRemoveProductFromWishListError,
    required TResult Function(WishListProduct data)
        addOrRemoveProductFromWishListSuccess,
    required TResult Function(Map<String, bool> favorites) updateFavoriteState,
  }) {
    return addOrRemoveProductFromWishListLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getWishListLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getWishListError,
    TResult? Function(WishListProduct data)? getWishListSuccess,
    TResult? Function()? addOrRemoveProductFromWishListLoading,
    TResult? Function(ApiErrorModel apiErrorModel)?
        addOrRemoveProductFromWishListError,
    TResult? Function(WishListProduct data)?
        addOrRemoveProductFromWishListSuccess,
    TResult? Function(Map<String, bool> favorites)? updateFavoriteState,
  }) {
    return addOrRemoveProductFromWishListLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getWishListLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getWishListError,
    TResult Function(WishListProduct data)? getWishListSuccess,
    TResult Function()? addOrRemoveProductFromWishListLoading,
    TResult Function(ApiErrorModel apiErrorModel)?
        addOrRemoveProductFromWishListError,
    TResult Function(WishListProduct data)?
        addOrRemoveProductFromWishListSuccess,
    TResult Function(Map<String, bool> favorites)? updateFavoriteState,
    required TResult orElse(),
  }) {
    if (addOrRemoveProductFromWishListLoading != null) {
      return addOrRemoveProductFromWishListLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetWishListLoading value) getWishListLoading,
    required TResult Function(GetWishListError value) getWishListError,
    required TResult Function(GetWishListSuccess value) getWishListSuccess,
    required TResult Function(AddOrRemoveProductFromWishListLoading value)
        addOrRemoveProductFromWishListLoading,
    required TResult Function(AddOrRemoveProductFromWishListError value)
        addOrRemoveProductFromWishListError,
    required TResult Function(AddOrRemoveProductFromWishListSuccess value)
        addOrRemoveProductFromWishListSuccess,
    required TResult Function(_UpdateFavoriteState value) updateFavoriteState,
  }) {
    return addOrRemoveProductFromWishListLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetWishListLoading value)? getWishListLoading,
    TResult? Function(GetWishListError value)? getWishListError,
    TResult? Function(GetWishListSuccess value)? getWishListSuccess,
    TResult? Function(AddOrRemoveProductFromWishListLoading value)?
        addOrRemoveProductFromWishListLoading,
    TResult? Function(AddOrRemoveProductFromWishListError value)?
        addOrRemoveProductFromWishListError,
    TResult? Function(AddOrRemoveProductFromWishListSuccess value)?
        addOrRemoveProductFromWishListSuccess,
    TResult? Function(_UpdateFavoriteState value)? updateFavoriteState,
  }) {
    return addOrRemoveProductFromWishListLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetWishListLoading value)? getWishListLoading,
    TResult Function(GetWishListError value)? getWishListError,
    TResult Function(GetWishListSuccess value)? getWishListSuccess,
    TResult Function(AddOrRemoveProductFromWishListLoading value)?
        addOrRemoveProductFromWishListLoading,
    TResult Function(AddOrRemoveProductFromWishListError value)?
        addOrRemoveProductFromWishListError,
    TResult Function(AddOrRemoveProductFromWishListSuccess value)?
        addOrRemoveProductFromWishListSuccess,
    TResult Function(_UpdateFavoriteState value)? updateFavoriteState,
    required TResult orElse(),
  }) {
    if (addOrRemoveProductFromWishListLoading != null) {
      return addOrRemoveProductFromWishListLoading(this);
    }
    return orElse();
  }
}

abstract class AddOrRemoveProductFromWishListLoading implements WishListState {
  const factory AddOrRemoveProductFromWishListLoading() =
      _$AddOrRemoveProductFromWishListLoadingImpl;
}

/// @nodoc
abstract class _$$AddOrRemoveProductFromWishListErrorImplCopyWith<$Res> {
  factory _$$AddOrRemoveProductFromWishListErrorImplCopyWith(
          _$AddOrRemoveProductFromWishListErrorImpl value,
          $Res Function(_$AddOrRemoveProductFromWishListErrorImpl) then) =
      __$$AddOrRemoveProductFromWishListErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$AddOrRemoveProductFromWishListErrorImplCopyWithImpl<$Res>
    extends _$WishListStateCopyWithImpl<$Res,
        _$AddOrRemoveProductFromWishListErrorImpl>
    implements _$$AddOrRemoveProductFromWishListErrorImplCopyWith<$Res> {
  __$$AddOrRemoveProductFromWishListErrorImplCopyWithImpl(
      _$AddOrRemoveProductFromWishListErrorImpl _value,
      $Res Function(_$AddOrRemoveProductFromWishListErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$AddOrRemoveProductFromWishListErrorImpl(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$AddOrRemoveProductFromWishListErrorImpl
    implements AddOrRemoveProductFromWishListError {
  const _$AddOrRemoveProductFromWishListErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'WishListState.addOrRemoveProductFromWishListError(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddOrRemoveProductFromWishListErrorImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddOrRemoveProductFromWishListErrorImplCopyWith<
          _$AddOrRemoveProductFromWishListErrorImpl>
      get copyWith => __$$AddOrRemoveProductFromWishListErrorImplCopyWithImpl<
          _$AddOrRemoveProductFromWishListErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getWishListLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getWishListError,
    required TResult Function(WishListProduct data) getWishListSuccess,
    required TResult Function() addOrRemoveProductFromWishListLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        addOrRemoveProductFromWishListError,
    required TResult Function(WishListProduct data)
        addOrRemoveProductFromWishListSuccess,
    required TResult Function(Map<String, bool> favorites) updateFavoriteState,
  }) {
    return addOrRemoveProductFromWishListError(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getWishListLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getWishListError,
    TResult? Function(WishListProduct data)? getWishListSuccess,
    TResult? Function()? addOrRemoveProductFromWishListLoading,
    TResult? Function(ApiErrorModel apiErrorModel)?
        addOrRemoveProductFromWishListError,
    TResult? Function(WishListProduct data)?
        addOrRemoveProductFromWishListSuccess,
    TResult? Function(Map<String, bool> favorites)? updateFavoriteState,
  }) {
    return addOrRemoveProductFromWishListError?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getWishListLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getWishListError,
    TResult Function(WishListProduct data)? getWishListSuccess,
    TResult Function()? addOrRemoveProductFromWishListLoading,
    TResult Function(ApiErrorModel apiErrorModel)?
        addOrRemoveProductFromWishListError,
    TResult Function(WishListProduct data)?
        addOrRemoveProductFromWishListSuccess,
    TResult Function(Map<String, bool> favorites)? updateFavoriteState,
    required TResult orElse(),
  }) {
    if (addOrRemoveProductFromWishListError != null) {
      return addOrRemoveProductFromWishListError(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetWishListLoading value) getWishListLoading,
    required TResult Function(GetWishListError value) getWishListError,
    required TResult Function(GetWishListSuccess value) getWishListSuccess,
    required TResult Function(AddOrRemoveProductFromWishListLoading value)
        addOrRemoveProductFromWishListLoading,
    required TResult Function(AddOrRemoveProductFromWishListError value)
        addOrRemoveProductFromWishListError,
    required TResult Function(AddOrRemoveProductFromWishListSuccess value)
        addOrRemoveProductFromWishListSuccess,
    required TResult Function(_UpdateFavoriteState value) updateFavoriteState,
  }) {
    return addOrRemoveProductFromWishListError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetWishListLoading value)? getWishListLoading,
    TResult? Function(GetWishListError value)? getWishListError,
    TResult? Function(GetWishListSuccess value)? getWishListSuccess,
    TResult? Function(AddOrRemoveProductFromWishListLoading value)?
        addOrRemoveProductFromWishListLoading,
    TResult? Function(AddOrRemoveProductFromWishListError value)?
        addOrRemoveProductFromWishListError,
    TResult? Function(AddOrRemoveProductFromWishListSuccess value)?
        addOrRemoveProductFromWishListSuccess,
    TResult? Function(_UpdateFavoriteState value)? updateFavoriteState,
  }) {
    return addOrRemoveProductFromWishListError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetWishListLoading value)? getWishListLoading,
    TResult Function(GetWishListError value)? getWishListError,
    TResult Function(GetWishListSuccess value)? getWishListSuccess,
    TResult Function(AddOrRemoveProductFromWishListLoading value)?
        addOrRemoveProductFromWishListLoading,
    TResult Function(AddOrRemoveProductFromWishListError value)?
        addOrRemoveProductFromWishListError,
    TResult Function(AddOrRemoveProductFromWishListSuccess value)?
        addOrRemoveProductFromWishListSuccess,
    TResult Function(_UpdateFavoriteState value)? updateFavoriteState,
    required TResult orElse(),
  }) {
    if (addOrRemoveProductFromWishListError != null) {
      return addOrRemoveProductFromWishListError(this);
    }
    return orElse();
  }
}

abstract class AddOrRemoveProductFromWishListError implements WishListState {
  const factory AddOrRemoveProductFromWishListError(
          final ApiErrorModel apiErrorModel) =
      _$AddOrRemoveProductFromWishListErrorImpl;

  ApiErrorModel get apiErrorModel;
  @JsonKey(ignore: true)
  _$$AddOrRemoveProductFromWishListErrorImplCopyWith<
          _$AddOrRemoveProductFromWishListErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddOrRemoveProductFromWishListSuccessImplCopyWith<$Res> {
  factory _$$AddOrRemoveProductFromWishListSuccessImplCopyWith(
          _$AddOrRemoveProductFromWishListSuccessImpl value,
          $Res Function(_$AddOrRemoveProductFromWishListSuccessImpl) then) =
      __$$AddOrRemoveProductFromWishListSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WishListProduct data});
}

/// @nodoc
class __$$AddOrRemoveProductFromWishListSuccessImplCopyWithImpl<$Res>
    extends _$WishListStateCopyWithImpl<$Res,
        _$AddOrRemoveProductFromWishListSuccessImpl>
    implements _$$AddOrRemoveProductFromWishListSuccessImplCopyWith<$Res> {
  __$$AddOrRemoveProductFromWishListSuccessImplCopyWithImpl(
      _$AddOrRemoveProductFromWishListSuccessImpl _value,
      $Res Function(_$AddOrRemoveProductFromWishListSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$AddOrRemoveProductFromWishListSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WishListProduct,
    ));
  }
}

/// @nodoc

class _$AddOrRemoveProductFromWishListSuccessImpl
    implements AddOrRemoveProductFromWishListSuccess {
  const _$AddOrRemoveProductFromWishListSuccessImpl(this.data);

  @override
  final WishListProduct data;

  @override
  String toString() {
    return 'WishListState.addOrRemoveProductFromWishListSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddOrRemoveProductFromWishListSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddOrRemoveProductFromWishListSuccessImplCopyWith<
          _$AddOrRemoveProductFromWishListSuccessImpl>
      get copyWith => __$$AddOrRemoveProductFromWishListSuccessImplCopyWithImpl<
          _$AddOrRemoveProductFromWishListSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getWishListLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getWishListError,
    required TResult Function(WishListProduct data) getWishListSuccess,
    required TResult Function() addOrRemoveProductFromWishListLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        addOrRemoveProductFromWishListError,
    required TResult Function(WishListProduct data)
        addOrRemoveProductFromWishListSuccess,
    required TResult Function(Map<String, bool> favorites) updateFavoriteState,
  }) {
    return addOrRemoveProductFromWishListSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getWishListLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getWishListError,
    TResult? Function(WishListProduct data)? getWishListSuccess,
    TResult? Function()? addOrRemoveProductFromWishListLoading,
    TResult? Function(ApiErrorModel apiErrorModel)?
        addOrRemoveProductFromWishListError,
    TResult? Function(WishListProduct data)?
        addOrRemoveProductFromWishListSuccess,
    TResult? Function(Map<String, bool> favorites)? updateFavoriteState,
  }) {
    return addOrRemoveProductFromWishListSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getWishListLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getWishListError,
    TResult Function(WishListProduct data)? getWishListSuccess,
    TResult Function()? addOrRemoveProductFromWishListLoading,
    TResult Function(ApiErrorModel apiErrorModel)?
        addOrRemoveProductFromWishListError,
    TResult Function(WishListProduct data)?
        addOrRemoveProductFromWishListSuccess,
    TResult Function(Map<String, bool> favorites)? updateFavoriteState,
    required TResult orElse(),
  }) {
    if (addOrRemoveProductFromWishListSuccess != null) {
      return addOrRemoveProductFromWishListSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetWishListLoading value) getWishListLoading,
    required TResult Function(GetWishListError value) getWishListError,
    required TResult Function(GetWishListSuccess value) getWishListSuccess,
    required TResult Function(AddOrRemoveProductFromWishListLoading value)
        addOrRemoveProductFromWishListLoading,
    required TResult Function(AddOrRemoveProductFromWishListError value)
        addOrRemoveProductFromWishListError,
    required TResult Function(AddOrRemoveProductFromWishListSuccess value)
        addOrRemoveProductFromWishListSuccess,
    required TResult Function(_UpdateFavoriteState value) updateFavoriteState,
  }) {
    return addOrRemoveProductFromWishListSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetWishListLoading value)? getWishListLoading,
    TResult? Function(GetWishListError value)? getWishListError,
    TResult? Function(GetWishListSuccess value)? getWishListSuccess,
    TResult? Function(AddOrRemoveProductFromWishListLoading value)?
        addOrRemoveProductFromWishListLoading,
    TResult? Function(AddOrRemoveProductFromWishListError value)?
        addOrRemoveProductFromWishListError,
    TResult? Function(AddOrRemoveProductFromWishListSuccess value)?
        addOrRemoveProductFromWishListSuccess,
    TResult? Function(_UpdateFavoriteState value)? updateFavoriteState,
  }) {
    return addOrRemoveProductFromWishListSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetWishListLoading value)? getWishListLoading,
    TResult Function(GetWishListError value)? getWishListError,
    TResult Function(GetWishListSuccess value)? getWishListSuccess,
    TResult Function(AddOrRemoveProductFromWishListLoading value)?
        addOrRemoveProductFromWishListLoading,
    TResult Function(AddOrRemoveProductFromWishListError value)?
        addOrRemoveProductFromWishListError,
    TResult Function(AddOrRemoveProductFromWishListSuccess value)?
        addOrRemoveProductFromWishListSuccess,
    TResult Function(_UpdateFavoriteState value)? updateFavoriteState,
    required TResult orElse(),
  }) {
    if (addOrRemoveProductFromWishListSuccess != null) {
      return addOrRemoveProductFromWishListSuccess(this);
    }
    return orElse();
  }
}

abstract class AddOrRemoveProductFromWishListSuccess implements WishListState {
  const factory AddOrRemoveProductFromWishListSuccess(
      final WishListProduct data) = _$AddOrRemoveProductFromWishListSuccessImpl;

  WishListProduct get data;
  @JsonKey(ignore: true)
  _$$AddOrRemoveProductFromWishListSuccessImplCopyWith<
          _$AddOrRemoveProductFromWishListSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateFavoriteStateImplCopyWith<$Res> {
  factory _$$UpdateFavoriteStateImplCopyWith(_$UpdateFavoriteStateImpl value,
          $Res Function(_$UpdateFavoriteStateImpl) then) =
      __$$UpdateFavoriteStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, bool> favorites});
}

/// @nodoc
class __$$UpdateFavoriteStateImplCopyWithImpl<$Res>
    extends _$WishListStateCopyWithImpl<$Res, _$UpdateFavoriteStateImpl>
    implements _$$UpdateFavoriteStateImplCopyWith<$Res> {
  __$$UpdateFavoriteStateImplCopyWithImpl(_$UpdateFavoriteStateImpl _value,
      $Res Function(_$UpdateFavoriteStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = null,
  }) {
    return _then(_$UpdateFavoriteStateImpl(
      null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ));
  }
}

/// @nodoc

class _$UpdateFavoriteStateImpl implements _UpdateFavoriteState {
  const _$UpdateFavoriteStateImpl(final Map<String, bool> favorites)
      : _favorites = favorites;

  final Map<String, bool> _favorites;
  @override
  Map<String, bool> get favorites {
    if (_favorites is EqualUnmodifiableMapView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_favorites);
  }

  @override
  String toString() {
    return 'WishListState.updateFavoriteState(favorites: $favorites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFavoriteStateImpl &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_favorites));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFavoriteStateImplCopyWith<_$UpdateFavoriteStateImpl> get copyWith =>
      __$$UpdateFavoriteStateImplCopyWithImpl<_$UpdateFavoriteStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getWishListLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getWishListError,
    required TResult Function(WishListProduct data) getWishListSuccess,
    required TResult Function() addOrRemoveProductFromWishListLoading,
    required TResult Function(ApiErrorModel apiErrorModel)
        addOrRemoveProductFromWishListError,
    required TResult Function(WishListProduct data)
        addOrRemoveProductFromWishListSuccess,
    required TResult Function(Map<String, bool> favorites) updateFavoriteState,
  }) {
    return updateFavoriteState(favorites);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getWishListLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getWishListError,
    TResult? Function(WishListProduct data)? getWishListSuccess,
    TResult? Function()? addOrRemoveProductFromWishListLoading,
    TResult? Function(ApiErrorModel apiErrorModel)?
        addOrRemoveProductFromWishListError,
    TResult? Function(WishListProduct data)?
        addOrRemoveProductFromWishListSuccess,
    TResult? Function(Map<String, bool> favorites)? updateFavoriteState,
  }) {
    return updateFavoriteState?.call(favorites);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getWishListLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getWishListError,
    TResult Function(WishListProduct data)? getWishListSuccess,
    TResult Function()? addOrRemoveProductFromWishListLoading,
    TResult Function(ApiErrorModel apiErrorModel)?
        addOrRemoveProductFromWishListError,
    TResult Function(WishListProduct data)?
        addOrRemoveProductFromWishListSuccess,
    TResult Function(Map<String, bool> favorites)? updateFavoriteState,
    required TResult orElse(),
  }) {
    if (updateFavoriteState != null) {
      return updateFavoriteState(favorites);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetWishListLoading value) getWishListLoading,
    required TResult Function(GetWishListError value) getWishListError,
    required TResult Function(GetWishListSuccess value) getWishListSuccess,
    required TResult Function(AddOrRemoveProductFromWishListLoading value)
        addOrRemoveProductFromWishListLoading,
    required TResult Function(AddOrRemoveProductFromWishListError value)
        addOrRemoveProductFromWishListError,
    required TResult Function(AddOrRemoveProductFromWishListSuccess value)
        addOrRemoveProductFromWishListSuccess,
    required TResult Function(_UpdateFavoriteState value) updateFavoriteState,
  }) {
    return updateFavoriteState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetWishListLoading value)? getWishListLoading,
    TResult? Function(GetWishListError value)? getWishListError,
    TResult? Function(GetWishListSuccess value)? getWishListSuccess,
    TResult? Function(AddOrRemoveProductFromWishListLoading value)?
        addOrRemoveProductFromWishListLoading,
    TResult? Function(AddOrRemoveProductFromWishListError value)?
        addOrRemoveProductFromWishListError,
    TResult? Function(AddOrRemoveProductFromWishListSuccess value)?
        addOrRemoveProductFromWishListSuccess,
    TResult? Function(_UpdateFavoriteState value)? updateFavoriteState,
  }) {
    return updateFavoriteState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetWishListLoading value)? getWishListLoading,
    TResult Function(GetWishListError value)? getWishListError,
    TResult Function(GetWishListSuccess value)? getWishListSuccess,
    TResult Function(AddOrRemoveProductFromWishListLoading value)?
        addOrRemoveProductFromWishListLoading,
    TResult Function(AddOrRemoveProductFromWishListError value)?
        addOrRemoveProductFromWishListError,
    TResult Function(AddOrRemoveProductFromWishListSuccess value)?
        addOrRemoveProductFromWishListSuccess,
    TResult Function(_UpdateFavoriteState value)? updateFavoriteState,
    required TResult orElse(),
  }) {
    if (updateFavoriteState != null) {
      return updateFavoriteState(this);
    }
    return orElse();
  }
}

abstract class _UpdateFavoriteState implements WishListState {
  const factory _UpdateFavoriteState(final Map<String, bool> favorites) =
      _$UpdateFavoriteStateImpl;

  Map<String, bool> get favorites;
  @JsonKey(ignore: true)
  _$$UpdateFavoriteStateImplCopyWith<_$UpdateFavoriteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
