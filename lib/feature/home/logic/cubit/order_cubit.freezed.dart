// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getAllOrderLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getAllOrderError,
    required TResult Function(GetAllOrderResponse data) getAllOrderSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getAllOrderLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getAllOrderError,
    TResult? Function(GetAllOrderResponse data)? getAllOrderSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getAllOrderLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getAllOrderError,
    TResult Function(GetAllOrderResponse data)? getAllOrderSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetAllOrderLoading value) getAllOrderLoading,
    required TResult Function(GetAllOrderError value) getAllOrderError,
    required TResult Function(GetAllOrderSuccess value) getAllOrderSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetAllOrderLoading value)? getAllOrderLoading,
    TResult? Function(GetAllOrderError value)? getAllOrderError,
    TResult? Function(GetAllOrderSuccess value)? getAllOrderSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetAllOrderLoading value)? getAllOrderLoading,
    TResult Function(GetAllOrderError value)? getAllOrderError,
    TResult Function(GetAllOrderSuccess value)? getAllOrderSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

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
    extends _$OrderStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'OrderState.initial()';
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
    required TResult Function() getAllOrderLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getAllOrderError,
    required TResult Function(GetAllOrderResponse data) getAllOrderSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getAllOrderLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getAllOrderError,
    TResult? Function(GetAllOrderResponse data)? getAllOrderSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getAllOrderLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getAllOrderError,
    TResult Function(GetAllOrderResponse data)? getAllOrderSuccess,
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
    required TResult Function(GetAllOrderLoading value) getAllOrderLoading,
    required TResult Function(GetAllOrderError value) getAllOrderError,
    required TResult Function(GetAllOrderSuccess value) getAllOrderSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetAllOrderLoading value)? getAllOrderLoading,
    TResult? Function(GetAllOrderError value)? getAllOrderError,
    TResult? Function(GetAllOrderSuccess value)? getAllOrderSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetAllOrderLoading value)? getAllOrderLoading,
    TResult Function(GetAllOrderError value)? getAllOrderError,
    TResult Function(GetAllOrderSuccess value)? getAllOrderSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OrderState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GetAllOrderLoadingImplCopyWith<$Res> {
  factory _$$GetAllOrderLoadingImplCopyWith(_$GetAllOrderLoadingImpl value,
          $Res Function(_$GetAllOrderLoadingImpl) then) =
      __$$GetAllOrderLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllOrderLoadingImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$GetAllOrderLoadingImpl>
    implements _$$GetAllOrderLoadingImplCopyWith<$Res> {
  __$$GetAllOrderLoadingImplCopyWithImpl(_$GetAllOrderLoadingImpl _value,
      $Res Function(_$GetAllOrderLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllOrderLoadingImpl implements GetAllOrderLoading {
  const _$GetAllOrderLoadingImpl();

  @override
  String toString() {
    return 'OrderState.getAllOrderLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllOrderLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getAllOrderLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getAllOrderError,
    required TResult Function(GetAllOrderResponse data) getAllOrderSuccess,
  }) {
    return getAllOrderLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getAllOrderLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getAllOrderError,
    TResult? Function(GetAllOrderResponse data)? getAllOrderSuccess,
  }) {
    return getAllOrderLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getAllOrderLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getAllOrderError,
    TResult Function(GetAllOrderResponse data)? getAllOrderSuccess,
    required TResult orElse(),
  }) {
    if (getAllOrderLoading != null) {
      return getAllOrderLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetAllOrderLoading value) getAllOrderLoading,
    required TResult Function(GetAllOrderError value) getAllOrderError,
    required TResult Function(GetAllOrderSuccess value) getAllOrderSuccess,
  }) {
    return getAllOrderLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetAllOrderLoading value)? getAllOrderLoading,
    TResult? Function(GetAllOrderError value)? getAllOrderError,
    TResult? Function(GetAllOrderSuccess value)? getAllOrderSuccess,
  }) {
    return getAllOrderLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetAllOrderLoading value)? getAllOrderLoading,
    TResult Function(GetAllOrderError value)? getAllOrderError,
    TResult Function(GetAllOrderSuccess value)? getAllOrderSuccess,
    required TResult orElse(),
  }) {
    if (getAllOrderLoading != null) {
      return getAllOrderLoading(this);
    }
    return orElse();
  }
}

abstract class GetAllOrderLoading implements OrderState {
  const factory GetAllOrderLoading() = _$GetAllOrderLoadingImpl;
}

/// @nodoc
abstract class _$$GetAllOrderErrorImplCopyWith<$Res> {
  factory _$$GetAllOrderErrorImplCopyWith(_$GetAllOrderErrorImpl value,
          $Res Function(_$GetAllOrderErrorImpl) then) =
      __$$GetAllOrderErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$GetAllOrderErrorImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$GetAllOrderErrorImpl>
    implements _$$GetAllOrderErrorImplCopyWith<$Res> {
  __$$GetAllOrderErrorImplCopyWithImpl(_$GetAllOrderErrorImpl _value,
      $Res Function(_$GetAllOrderErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$GetAllOrderErrorImpl(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$GetAllOrderErrorImpl implements GetAllOrderError {
  const _$GetAllOrderErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'OrderState.getAllOrderError(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllOrderErrorImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllOrderErrorImplCopyWith<_$GetAllOrderErrorImpl> get copyWith =>
      __$$GetAllOrderErrorImplCopyWithImpl<_$GetAllOrderErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getAllOrderLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getAllOrderError,
    required TResult Function(GetAllOrderResponse data) getAllOrderSuccess,
  }) {
    return getAllOrderError(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getAllOrderLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getAllOrderError,
    TResult? Function(GetAllOrderResponse data)? getAllOrderSuccess,
  }) {
    return getAllOrderError?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getAllOrderLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getAllOrderError,
    TResult Function(GetAllOrderResponse data)? getAllOrderSuccess,
    required TResult orElse(),
  }) {
    if (getAllOrderError != null) {
      return getAllOrderError(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetAllOrderLoading value) getAllOrderLoading,
    required TResult Function(GetAllOrderError value) getAllOrderError,
    required TResult Function(GetAllOrderSuccess value) getAllOrderSuccess,
  }) {
    return getAllOrderError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetAllOrderLoading value)? getAllOrderLoading,
    TResult? Function(GetAllOrderError value)? getAllOrderError,
    TResult? Function(GetAllOrderSuccess value)? getAllOrderSuccess,
  }) {
    return getAllOrderError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetAllOrderLoading value)? getAllOrderLoading,
    TResult Function(GetAllOrderError value)? getAllOrderError,
    TResult Function(GetAllOrderSuccess value)? getAllOrderSuccess,
    required TResult orElse(),
  }) {
    if (getAllOrderError != null) {
      return getAllOrderError(this);
    }
    return orElse();
  }
}

abstract class GetAllOrderError implements OrderState {
  const factory GetAllOrderError(final ApiErrorModel apiErrorModel) =
      _$GetAllOrderErrorImpl;

  ApiErrorModel get apiErrorModel;
  @JsonKey(ignore: true)
  _$$GetAllOrderErrorImplCopyWith<_$GetAllOrderErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllOrderSuccessImplCopyWith<$Res> {
  factory _$$GetAllOrderSuccessImplCopyWith(_$GetAllOrderSuccessImpl value,
          $Res Function(_$GetAllOrderSuccessImpl) then) =
      __$$GetAllOrderSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetAllOrderResponse data});
}

/// @nodoc
class __$$GetAllOrderSuccessImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$GetAllOrderSuccessImpl>
    implements _$$GetAllOrderSuccessImplCopyWith<$Res> {
  __$$GetAllOrderSuccessImplCopyWithImpl(_$GetAllOrderSuccessImpl _value,
      $Res Function(_$GetAllOrderSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GetAllOrderSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GetAllOrderResponse,
    ));
  }
}

/// @nodoc

class _$GetAllOrderSuccessImpl implements GetAllOrderSuccess {
  const _$GetAllOrderSuccessImpl(this.data);

  @override
  final GetAllOrderResponse data;

  @override
  String toString() {
    return 'OrderState.getAllOrderSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllOrderSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllOrderSuccessImplCopyWith<_$GetAllOrderSuccessImpl> get copyWith =>
      __$$GetAllOrderSuccessImplCopyWithImpl<_$GetAllOrderSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getAllOrderLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getAllOrderError,
    required TResult Function(GetAllOrderResponse data) getAllOrderSuccess,
  }) {
    return getAllOrderSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getAllOrderLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getAllOrderError,
    TResult? Function(GetAllOrderResponse data)? getAllOrderSuccess,
  }) {
    return getAllOrderSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getAllOrderLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getAllOrderError,
    TResult Function(GetAllOrderResponse data)? getAllOrderSuccess,
    required TResult orElse(),
  }) {
    if (getAllOrderSuccess != null) {
      return getAllOrderSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetAllOrderLoading value) getAllOrderLoading,
    required TResult Function(GetAllOrderError value) getAllOrderError,
    required TResult Function(GetAllOrderSuccess value) getAllOrderSuccess,
  }) {
    return getAllOrderSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetAllOrderLoading value)? getAllOrderLoading,
    TResult? Function(GetAllOrderError value)? getAllOrderError,
    TResult? Function(GetAllOrderSuccess value)? getAllOrderSuccess,
  }) {
    return getAllOrderSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetAllOrderLoading value)? getAllOrderLoading,
    TResult Function(GetAllOrderError value)? getAllOrderError,
    TResult Function(GetAllOrderSuccess value)? getAllOrderSuccess,
    required TResult orElse(),
  }) {
    if (getAllOrderSuccess != null) {
      return getAllOrderSuccess(this);
    }
    return orElse();
  }
}

abstract class GetAllOrderSuccess implements OrderState {
  const factory GetAllOrderSuccess(final GetAllOrderResponse data) =
      _$GetAllOrderSuccessImpl;

  GetAllOrderResponse get data;
  @JsonKey(ignore: true)
  _$$GetAllOrderSuccessImplCopyWith<_$GetAllOrderSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
