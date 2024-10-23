// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String id) addItemToCartLoading,
    required TResult Function(CartResponse data, int quantity)
        addItemToCartSuccess,
    required TResult Function(int quantity) updateQuantityNumber,
    required TResult Function() getCartItemLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getCartItemError,
    required TResult Function(CartResponse? data) getCartItemSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) deleteCartItemError,
    required TResult Function() deleteCartItemLoading,
    required TResult Function() deleteCartLoading,
    required TResult Function() applyCouponLoading,
    required TResult Function(String id, int quantity)
        updateQuantityItemLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String id)? addItemToCartLoading,
    TResult? Function(CartResponse data, int quantity)? addItemToCartSuccess,
    TResult? Function(int quantity)? updateQuantityNumber,
    TResult? Function()? getCartItemLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getCartItemError,
    TResult? Function(CartResponse? data)? getCartItemSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? deleteCartItemError,
    TResult? Function()? deleteCartItemLoading,
    TResult? Function()? deleteCartLoading,
    TResult? Function()? applyCouponLoading,
    TResult? Function(String id, int quantity)? updateQuantityItemLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String id)? addItemToCartLoading,
    TResult Function(CartResponse data, int quantity)? addItemToCartSuccess,
    TResult Function(int quantity)? updateQuantityNumber,
    TResult Function()? getCartItemLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getCartItemError,
    TResult Function(CartResponse? data)? getCartItemSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? deleteCartItemError,
    TResult Function()? deleteCartItemLoading,
    TResult Function()? deleteCartLoading,
    TResult Function()? applyCouponLoading,
    TResult Function(String id, int quantity)? updateQuantityItemLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AddItemToCartLoading value) addItemToCartLoading,
    required TResult Function(AddItemToCartSuccess value) addItemToCartSuccess,
    required TResult Function(UpdateQuantityNumber value) updateQuantityNumber,
    required TResult Function(GetCartItemLoading value) getCartItemLoading,
    required TResult Function(GetCartItemError value) getCartItemError,
    required TResult Function(GetCartItemSuccess value) getCartItemSuccess,
    required TResult Function(DeleteCartItemError value) deleteCartItemError,
    required TResult Function(DeleteCartItemLoading value)
        deleteCartItemLoading,
    required TResult Function(DeleteCartLoading value) deleteCartLoading,
    required TResult Function(ApplyCouponLoading value) applyCouponLoading,
    required TResult Function(UpdateQuantityItemLoading value)
        updateQuantityItemLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddItemToCartLoading value)? addItemToCartLoading,
    TResult? Function(AddItemToCartSuccess value)? addItemToCartSuccess,
    TResult? Function(UpdateQuantityNumber value)? updateQuantityNumber,
    TResult? Function(GetCartItemLoading value)? getCartItemLoading,
    TResult? Function(GetCartItemError value)? getCartItemError,
    TResult? Function(GetCartItemSuccess value)? getCartItemSuccess,
    TResult? Function(DeleteCartItemError value)? deleteCartItemError,
    TResult? Function(DeleteCartItemLoading value)? deleteCartItemLoading,
    TResult? Function(DeleteCartLoading value)? deleteCartLoading,
    TResult? Function(ApplyCouponLoading value)? applyCouponLoading,
    TResult? Function(UpdateQuantityItemLoading value)?
        updateQuantityItemLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddItemToCartLoading value)? addItemToCartLoading,
    TResult Function(AddItemToCartSuccess value)? addItemToCartSuccess,
    TResult Function(UpdateQuantityNumber value)? updateQuantityNumber,
    TResult Function(GetCartItemLoading value)? getCartItemLoading,
    TResult Function(GetCartItemError value)? getCartItemError,
    TResult Function(GetCartItemSuccess value)? getCartItemSuccess,
    TResult Function(DeleteCartItemError value)? deleteCartItemError,
    TResult Function(DeleteCartItemLoading value)? deleteCartItemLoading,
    TResult Function(DeleteCartLoading value)? deleteCartLoading,
    TResult Function(ApplyCouponLoading value)? applyCouponLoading,
    TResult Function(UpdateQuantityItemLoading value)?
        updateQuantityItemLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

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
    extends _$CartStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'CartState.initial()';
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
    required TResult Function(String id) addItemToCartLoading,
    required TResult Function(CartResponse data, int quantity)
        addItemToCartSuccess,
    required TResult Function(int quantity) updateQuantityNumber,
    required TResult Function() getCartItemLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getCartItemError,
    required TResult Function(CartResponse? data) getCartItemSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) deleteCartItemError,
    required TResult Function() deleteCartItemLoading,
    required TResult Function() deleteCartLoading,
    required TResult Function() applyCouponLoading,
    required TResult Function(String id, int quantity)
        updateQuantityItemLoading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String id)? addItemToCartLoading,
    TResult? Function(CartResponse data, int quantity)? addItemToCartSuccess,
    TResult? Function(int quantity)? updateQuantityNumber,
    TResult? Function()? getCartItemLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getCartItemError,
    TResult? Function(CartResponse? data)? getCartItemSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? deleteCartItemError,
    TResult? Function()? deleteCartItemLoading,
    TResult? Function()? deleteCartLoading,
    TResult? Function()? applyCouponLoading,
    TResult? Function(String id, int quantity)? updateQuantityItemLoading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String id)? addItemToCartLoading,
    TResult Function(CartResponse data, int quantity)? addItemToCartSuccess,
    TResult Function(int quantity)? updateQuantityNumber,
    TResult Function()? getCartItemLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getCartItemError,
    TResult Function(CartResponse? data)? getCartItemSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? deleteCartItemError,
    TResult Function()? deleteCartItemLoading,
    TResult Function()? deleteCartLoading,
    TResult Function()? applyCouponLoading,
    TResult Function(String id, int quantity)? updateQuantityItemLoading,
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
    required TResult Function(AddItemToCartLoading value) addItemToCartLoading,
    required TResult Function(AddItemToCartSuccess value) addItemToCartSuccess,
    required TResult Function(UpdateQuantityNumber value) updateQuantityNumber,
    required TResult Function(GetCartItemLoading value) getCartItemLoading,
    required TResult Function(GetCartItemError value) getCartItemError,
    required TResult Function(GetCartItemSuccess value) getCartItemSuccess,
    required TResult Function(DeleteCartItemError value) deleteCartItemError,
    required TResult Function(DeleteCartItemLoading value)
        deleteCartItemLoading,
    required TResult Function(DeleteCartLoading value) deleteCartLoading,
    required TResult Function(ApplyCouponLoading value) applyCouponLoading,
    required TResult Function(UpdateQuantityItemLoading value)
        updateQuantityItemLoading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddItemToCartLoading value)? addItemToCartLoading,
    TResult? Function(AddItemToCartSuccess value)? addItemToCartSuccess,
    TResult? Function(UpdateQuantityNumber value)? updateQuantityNumber,
    TResult? Function(GetCartItemLoading value)? getCartItemLoading,
    TResult? Function(GetCartItemError value)? getCartItemError,
    TResult? Function(GetCartItemSuccess value)? getCartItemSuccess,
    TResult? Function(DeleteCartItemError value)? deleteCartItemError,
    TResult? Function(DeleteCartItemLoading value)? deleteCartItemLoading,
    TResult? Function(DeleteCartLoading value)? deleteCartLoading,
    TResult? Function(ApplyCouponLoading value)? applyCouponLoading,
    TResult? Function(UpdateQuantityItemLoading value)?
        updateQuantityItemLoading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddItemToCartLoading value)? addItemToCartLoading,
    TResult Function(AddItemToCartSuccess value)? addItemToCartSuccess,
    TResult Function(UpdateQuantityNumber value)? updateQuantityNumber,
    TResult Function(GetCartItemLoading value)? getCartItemLoading,
    TResult Function(GetCartItemError value)? getCartItemError,
    TResult Function(GetCartItemSuccess value)? getCartItemSuccess,
    TResult Function(DeleteCartItemError value)? deleteCartItemError,
    TResult Function(DeleteCartItemLoading value)? deleteCartItemLoading,
    TResult Function(DeleteCartLoading value)? deleteCartLoading,
    TResult Function(ApplyCouponLoading value)? applyCouponLoading,
    TResult Function(UpdateQuantityItemLoading value)?
        updateQuantityItemLoading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CartState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AddItemToCartLoadingImplCopyWith<$Res> {
  factory _$$AddItemToCartLoadingImplCopyWith(_$AddItemToCartLoadingImpl value,
          $Res Function(_$AddItemToCartLoadingImpl) then) =
      __$$AddItemToCartLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$AddItemToCartLoadingImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$AddItemToCartLoadingImpl>
    implements _$$AddItemToCartLoadingImplCopyWith<$Res> {
  __$$AddItemToCartLoadingImplCopyWithImpl(_$AddItemToCartLoadingImpl _value,
      $Res Function(_$AddItemToCartLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$AddItemToCartLoadingImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddItemToCartLoadingImpl implements AddItemToCartLoading {
  const _$AddItemToCartLoadingImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'CartState.addItemToCartLoading(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddItemToCartLoadingImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddItemToCartLoadingImplCopyWith<_$AddItemToCartLoadingImpl>
      get copyWith =>
          __$$AddItemToCartLoadingImplCopyWithImpl<_$AddItemToCartLoadingImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String id) addItemToCartLoading,
    required TResult Function(CartResponse data, int quantity)
        addItemToCartSuccess,
    required TResult Function(int quantity) updateQuantityNumber,
    required TResult Function() getCartItemLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getCartItemError,
    required TResult Function(CartResponse? data) getCartItemSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) deleteCartItemError,
    required TResult Function() deleteCartItemLoading,
    required TResult Function() deleteCartLoading,
    required TResult Function() applyCouponLoading,
    required TResult Function(String id, int quantity)
        updateQuantityItemLoading,
  }) {
    return addItemToCartLoading(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String id)? addItemToCartLoading,
    TResult? Function(CartResponse data, int quantity)? addItemToCartSuccess,
    TResult? Function(int quantity)? updateQuantityNumber,
    TResult? Function()? getCartItemLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getCartItemError,
    TResult? Function(CartResponse? data)? getCartItemSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? deleteCartItemError,
    TResult? Function()? deleteCartItemLoading,
    TResult? Function()? deleteCartLoading,
    TResult? Function()? applyCouponLoading,
    TResult? Function(String id, int quantity)? updateQuantityItemLoading,
  }) {
    return addItemToCartLoading?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String id)? addItemToCartLoading,
    TResult Function(CartResponse data, int quantity)? addItemToCartSuccess,
    TResult Function(int quantity)? updateQuantityNumber,
    TResult Function()? getCartItemLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getCartItemError,
    TResult Function(CartResponse? data)? getCartItemSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? deleteCartItemError,
    TResult Function()? deleteCartItemLoading,
    TResult Function()? deleteCartLoading,
    TResult Function()? applyCouponLoading,
    TResult Function(String id, int quantity)? updateQuantityItemLoading,
    required TResult orElse(),
  }) {
    if (addItemToCartLoading != null) {
      return addItemToCartLoading(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AddItemToCartLoading value) addItemToCartLoading,
    required TResult Function(AddItemToCartSuccess value) addItemToCartSuccess,
    required TResult Function(UpdateQuantityNumber value) updateQuantityNumber,
    required TResult Function(GetCartItemLoading value) getCartItemLoading,
    required TResult Function(GetCartItemError value) getCartItemError,
    required TResult Function(GetCartItemSuccess value) getCartItemSuccess,
    required TResult Function(DeleteCartItemError value) deleteCartItemError,
    required TResult Function(DeleteCartItemLoading value)
        deleteCartItemLoading,
    required TResult Function(DeleteCartLoading value) deleteCartLoading,
    required TResult Function(ApplyCouponLoading value) applyCouponLoading,
    required TResult Function(UpdateQuantityItemLoading value)
        updateQuantityItemLoading,
  }) {
    return addItemToCartLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddItemToCartLoading value)? addItemToCartLoading,
    TResult? Function(AddItemToCartSuccess value)? addItemToCartSuccess,
    TResult? Function(UpdateQuantityNumber value)? updateQuantityNumber,
    TResult? Function(GetCartItemLoading value)? getCartItemLoading,
    TResult? Function(GetCartItemError value)? getCartItemError,
    TResult? Function(GetCartItemSuccess value)? getCartItemSuccess,
    TResult? Function(DeleteCartItemError value)? deleteCartItemError,
    TResult? Function(DeleteCartItemLoading value)? deleteCartItemLoading,
    TResult? Function(DeleteCartLoading value)? deleteCartLoading,
    TResult? Function(ApplyCouponLoading value)? applyCouponLoading,
    TResult? Function(UpdateQuantityItemLoading value)?
        updateQuantityItemLoading,
  }) {
    return addItemToCartLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddItemToCartLoading value)? addItemToCartLoading,
    TResult Function(AddItemToCartSuccess value)? addItemToCartSuccess,
    TResult Function(UpdateQuantityNumber value)? updateQuantityNumber,
    TResult Function(GetCartItemLoading value)? getCartItemLoading,
    TResult Function(GetCartItemError value)? getCartItemError,
    TResult Function(GetCartItemSuccess value)? getCartItemSuccess,
    TResult Function(DeleteCartItemError value)? deleteCartItemError,
    TResult Function(DeleteCartItemLoading value)? deleteCartItemLoading,
    TResult Function(DeleteCartLoading value)? deleteCartLoading,
    TResult Function(ApplyCouponLoading value)? applyCouponLoading,
    TResult Function(UpdateQuantityItemLoading value)?
        updateQuantityItemLoading,
    required TResult orElse(),
  }) {
    if (addItemToCartLoading != null) {
      return addItemToCartLoading(this);
    }
    return orElse();
  }
}

abstract class AddItemToCartLoading implements CartState {
  const factory AddItemToCartLoading(final String id) =
      _$AddItemToCartLoadingImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$AddItemToCartLoadingImplCopyWith<_$AddItemToCartLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddItemToCartSuccessImplCopyWith<$Res> {
  factory _$$AddItemToCartSuccessImplCopyWith(_$AddItemToCartSuccessImpl value,
          $Res Function(_$AddItemToCartSuccessImpl) then) =
      __$$AddItemToCartSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CartResponse data, int quantity});
}

/// @nodoc
class __$$AddItemToCartSuccessImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$AddItemToCartSuccessImpl>
    implements _$$AddItemToCartSuccessImplCopyWith<$Res> {
  __$$AddItemToCartSuccessImplCopyWithImpl(_$AddItemToCartSuccessImpl _value,
      $Res Function(_$AddItemToCartSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? quantity = null,
  }) {
    return _then(_$AddItemToCartSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CartResponse,
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddItemToCartSuccessImpl implements AddItemToCartSuccess {
  const _$AddItemToCartSuccessImpl(this.data, this.quantity);

  @override
  final CartResponse data;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartState.addItemToCartSuccess(data: $data, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddItemToCartSuccessImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddItemToCartSuccessImplCopyWith<_$AddItemToCartSuccessImpl>
      get copyWith =>
          __$$AddItemToCartSuccessImplCopyWithImpl<_$AddItemToCartSuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String id) addItemToCartLoading,
    required TResult Function(CartResponse data, int quantity)
        addItemToCartSuccess,
    required TResult Function(int quantity) updateQuantityNumber,
    required TResult Function() getCartItemLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getCartItemError,
    required TResult Function(CartResponse? data) getCartItemSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) deleteCartItemError,
    required TResult Function() deleteCartItemLoading,
    required TResult Function() deleteCartLoading,
    required TResult Function() applyCouponLoading,
    required TResult Function(String id, int quantity)
        updateQuantityItemLoading,
  }) {
    return addItemToCartSuccess(data, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String id)? addItemToCartLoading,
    TResult? Function(CartResponse data, int quantity)? addItemToCartSuccess,
    TResult? Function(int quantity)? updateQuantityNumber,
    TResult? Function()? getCartItemLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getCartItemError,
    TResult? Function(CartResponse? data)? getCartItemSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? deleteCartItemError,
    TResult? Function()? deleteCartItemLoading,
    TResult? Function()? deleteCartLoading,
    TResult? Function()? applyCouponLoading,
    TResult? Function(String id, int quantity)? updateQuantityItemLoading,
  }) {
    return addItemToCartSuccess?.call(data, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String id)? addItemToCartLoading,
    TResult Function(CartResponse data, int quantity)? addItemToCartSuccess,
    TResult Function(int quantity)? updateQuantityNumber,
    TResult Function()? getCartItemLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getCartItemError,
    TResult Function(CartResponse? data)? getCartItemSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? deleteCartItemError,
    TResult Function()? deleteCartItemLoading,
    TResult Function()? deleteCartLoading,
    TResult Function()? applyCouponLoading,
    TResult Function(String id, int quantity)? updateQuantityItemLoading,
    required TResult orElse(),
  }) {
    if (addItemToCartSuccess != null) {
      return addItemToCartSuccess(data, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AddItemToCartLoading value) addItemToCartLoading,
    required TResult Function(AddItemToCartSuccess value) addItemToCartSuccess,
    required TResult Function(UpdateQuantityNumber value) updateQuantityNumber,
    required TResult Function(GetCartItemLoading value) getCartItemLoading,
    required TResult Function(GetCartItemError value) getCartItemError,
    required TResult Function(GetCartItemSuccess value) getCartItemSuccess,
    required TResult Function(DeleteCartItemError value) deleteCartItemError,
    required TResult Function(DeleteCartItemLoading value)
        deleteCartItemLoading,
    required TResult Function(DeleteCartLoading value) deleteCartLoading,
    required TResult Function(ApplyCouponLoading value) applyCouponLoading,
    required TResult Function(UpdateQuantityItemLoading value)
        updateQuantityItemLoading,
  }) {
    return addItemToCartSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddItemToCartLoading value)? addItemToCartLoading,
    TResult? Function(AddItemToCartSuccess value)? addItemToCartSuccess,
    TResult? Function(UpdateQuantityNumber value)? updateQuantityNumber,
    TResult? Function(GetCartItemLoading value)? getCartItemLoading,
    TResult? Function(GetCartItemError value)? getCartItemError,
    TResult? Function(GetCartItemSuccess value)? getCartItemSuccess,
    TResult? Function(DeleteCartItemError value)? deleteCartItemError,
    TResult? Function(DeleteCartItemLoading value)? deleteCartItemLoading,
    TResult? Function(DeleteCartLoading value)? deleteCartLoading,
    TResult? Function(ApplyCouponLoading value)? applyCouponLoading,
    TResult? Function(UpdateQuantityItemLoading value)?
        updateQuantityItemLoading,
  }) {
    return addItemToCartSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddItemToCartLoading value)? addItemToCartLoading,
    TResult Function(AddItemToCartSuccess value)? addItemToCartSuccess,
    TResult Function(UpdateQuantityNumber value)? updateQuantityNumber,
    TResult Function(GetCartItemLoading value)? getCartItemLoading,
    TResult Function(GetCartItemError value)? getCartItemError,
    TResult Function(GetCartItemSuccess value)? getCartItemSuccess,
    TResult Function(DeleteCartItemError value)? deleteCartItemError,
    TResult Function(DeleteCartItemLoading value)? deleteCartItemLoading,
    TResult Function(DeleteCartLoading value)? deleteCartLoading,
    TResult Function(ApplyCouponLoading value)? applyCouponLoading,
    TResult Function(UpdateQuantityItemLoading value)?
        updateQuantityItemLoading,
    required TResult orElse(),
  }) {
    if (addItemToCartSuccess != null) {
      return addItemToCartSuccess(this);
    }
    return orElse();
  }
}

abstract class AddItemToCartSuccess implements CartState {
  const factory AddItemToCartSuccess(
      final CartResponse data, final int quantity) = _$AddItemToCartSuccessImpl;

  CartResponse get data;
  int get quantity;
  @JsonKey(ignore: true)
  _$$AddItemToCartSuccessImplCopyWith<_$AddItemToCartSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateQuantityNumberImplCopyWith<$Res> {
  factory _$$UpdateQuantityNumberImplCopyWith(_$UpdateQuantityNumberImpl value,
          $Res Function(_$UpdateQuantityNumberImpl) then) =
      __$$UpdateQuantityNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int quantity});
}

/// @nodoc
class __$$UpdateQuantityNumberImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$UpdateQuantityNumberImpl>
    implements _$$UpdateQuantityNumberImplCopyWith<$Res> {
  __$$UpdateQuantityNumberImplCopyWithImpl(_$UpdateQuantityNumberImpl _value,
      $Res Function(_$UpdateQuantityNumberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
  }) {
    return _then(_$UpdateQuantityNumberImpl(
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateQuantityNumberImpl implements UpdateQuantityNumber {
  const _$UpdateQuantityNumberImpl(this.quantity);

  @override
  final int quantity;

  @override
  String toString() {
    return 'CartState.updateQuantityNumber(quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateQuantityNumberImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateQuantityNumberImplCopyWith<_$UpdateQuantityNumberImpl>
      get copyWith =>
          __$$UpdateQuantityNumberImplCopyWithImpl<_$UpdateQuantityNumberImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String id) addItemToCartLoading,
    required TResult Function(CartResponse data, int quantity)
        addItemToCartSuccess,
    required TResult Function(int quantity) updateQuantityNumber,
    required TResult Function() getCartItemLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getCartItemError,
    required TResult Function(CartResponse? data) getCartItemSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) deleteCartItemError,
    required TResult Function() deleteCartItemLoading,
    required TResult Function() deleteCartLoading,
    required TResult Function() applyCouponLoading,
    required TResult Function(String id, int quantity)
        updateQuantityItemLoading,
  }) {
    return updateQuantityNumber(quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String id)? addItemToCartLoading,
    TResult? Function(CartResponse data, int quantity)? addItemToCartSuccess,
    TResult? Function(int quantity)? updateQuantityNumber,
    TResult? Function()? getCartItemLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getCartItemError,
    TResult? Function(CartResponse? data)? getCartItemSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? deleteCartItemError,
    TResult? Function()? deleteCartItemLoading,
    TResult? Function()? deleteCartLoading,
    TResult? Function()? applyCouponLoading,
    TResult? Function(String id, int quantity)? updateQuantityItemLoading,
  }) {
    return updateQuantityNumber?.call(quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String id)? addItemToCartLoading,
    TResult Function(CartResponse data, int quantity)? addItemToCartSuccess,
    TResult Function(int quantity)? updateQuantityNumber,
    TResult Function()? getCartItemLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getCartItemError,
    TResult Function(CartResponse? data)? getCartItemSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? deleteCartItemError,
    TResult Function()? deleteCartItemLoading,
    TResult Function()? deleteCartLoading,
    TResult Function()? applyCouponLoading,
    TResult Function(String id, int quantity)? updateQuantityItemLoading,
    required TResult orElse(),
  }) {
    if (updateQuantityNumber != null) {
      return updateQuantityNumber(quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AddItemToCartLoading value) addItemToCartLoading,
    required TResult Function(AddItemToCartSuccess value) addItemToCartSuccess,
    required TResult Function(UpdateQuantityNumber value) updateQuantityNumber,
    required TResult Function(GetCartItemLoading value) getCartItemLoading,
    required TResult Function(GetCartItemError value) getCartItemError,
    required TResult Function(GetCartItemSuccess value) getCartItemSuccess,
    required TResult Function(DeleteCartItemError value) deleteCartItemError,
    required TResult Function(DeleteCartItemLoading value)
        deleteCartItemLoading,
    required TResult Function(DeleteCartLoading value) deleteCartLoading,
    required TResult Function(ApplyCouponLoading value) applyCouponLoading,
    required TResult Function(UpdateQuantityItemLoading value)
        updateQuantityItemLoading,
  }) {
    return updateQuantityNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddItemToCartLoading value)? addItemToCartLoading,
    TResult? Function(AddItemToCartSuccess value)? addItemToCartSuccess,
    TResult? Function(UpdateQuantityNumber value)? updateQuantityNumber,
    TResult? Function(GetCartItemLoading value)? getCartItemLoading,
    TResult? Function(GetCartItemError value)? getCartItemError,
    TResult? Function(GetCartItemSuccess value)? getCartItemSuccess,
    TResult? Function(DeleteCartItemError value)? deleteCartItemError,
    TResult? Function(DeleteCartItemLoading value)? deleteCartItemLoading,
    TResult? Function(DeleteCartLoading value)? deleteCartLoading,
    TResult? Function(ApplyCouponLoading value)? applyCouponLoading,
    TResult? Function(UpdateQuantityItemLoading value)?
        updateQuantityItemLoading,
  }) {
    return updateQuantityNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddItemToCartLoading value)? addItemToCartLoading,
    TResult Function(AddItemToCartSuccess value)? addItemToCartSuccess,
    TResult Function(UpdateQuantityNumber value)? updateQuantityNumber,
    TResult Function(GetCartItemLoading value)? getCartItemLoading,
    TResult Function(GetCartItemError value)? getCartItemError,
    TResult Function(GetCartItemSuccess value)? getCartItemSuccess,
    TResult Function(DeleteCartItemError value)? deleteCartItemError,
    TResult Function(DeleteCartItemLoading value)? deleteCartItemLoading,
    TResult Function(DeleteCartLoading value)? deleteCartLoading,
    TResult Function(ApplyCouponLoading value)? applyCouponLoading,
    TResult Function(UpdateQuantityItemLoading value)?
        updateQuantityItemLoading,
    required TResult orElse(),
  }) {
    if (updateQuantityNumber != null) {
      return updateQuantityNumber(this);
    }
    return orElse();
  }
}

abstract class UpdateQuantityNumber implements CartState {
  const factory UpdateQuantityNumber(final int quantity) =
      _$UpdateQuantityNumberImpl;

  int get quantity;
  @JsonKey(ignore: true)
  _$$UpdateQuantityNumberImplCopyWith<_$UpdateQuantityNumberImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCartItemLoadingImplCopyWith<$Res> {
  factory _$$GetCartItemLoadingImplCopyWith(_$GetCartItemLoadingImpl value,
          $Res Function(_$GetCartItemLoadingImpl) then) =
      __$$GetCartItemLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCartItemLoadingImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$GetCartItemLoadingImpl>
    implements _$$GetCartItemLoadingImplCopyWith<$Res> {
  __$$GetCartItemLoadingImplCopyWithImpl(_$GetCartItemLoadingImpl _value,
      $Res Function(_$GetCartItemLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCartItemLoadingImpl implements GetCartItemLoading {
  const _$GetCartItemLoadingImpl();

  @override
  String toString() {
    return 'CartState.getCartItemLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCartItemLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String id) addItemToCartLoading,
    required TResult Function(CartResponse data, int quantity)
        addItemToCartSuccess,
    required TResult Function(int quantity) updateQuantityNumber,
    required TResult Function() getCartItemLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getCartItemError,
    required TResult Function(CartResponse? data) getCartItemSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) deleteCartItemError,
    required TResult Function() deleteCartItemLoading,
    required TResult Function() deleteCartLoading,
    required TResult Function() applyCouponLoading,
    required TResult Function(String id, int quantity)
        updateQuantityItemLoading,
  }) {
    return getCartItemLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String id)? addItemToCartLoading,
    TResult? Function(CartResponse data, int quantity)? addItemToCartSuccess,
    TResult? Function(int quantity)? updateQuantityNumber,
    TResult? Function()? getCartItemLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getCartItemError,
    TResult? Function(CartResponse? data)? getCartItemSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? deleteCartItemError,
    TResult? Function()? deleteCartItemLoading,
    TResult? Function()? deleteCartLoading,
    TResult? Function()? applyCouponLoading,
    TResult? Function(String id, int quantity)? updateQuantityItemLoading,
  }) {
    return getCartItemLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String id)? addItemToCartLoading,
    TResult Function(CartResponse data, int quantity)? addItemToCartSuccess,
    TResult Function(int quantity)? updateQuantityNumber,
    TResult Function()? getCartItemLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getCartItemError,
    TResult Function(CartResponse? data)? getCartItemSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? deleteCartItemError,
    TResult Function()? deleteCartItemLoading,
    TResult Function()? deleteCartLoading,
    TResult Function()? applyCouponLoading,
    TResult Function(String id, int quantity)? updateQuantityItemLoading,
    required TResult orElse(),
  }) {
    if (getCartItemLoading != null) {
      return getCartItemLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AddItemToCartLoading value) addItemToCartLoading,
    required TResult Function(AddItemToCartSuccess value) addItemToCartSuccess,
    required TResult Function(UpdateQuantityNumber value) updateQuantityNumber,
    required TResult Function(GetCartItemLoading value) getCartItemLoading,
    required TResult Function(GetCartItemError value) getCartItemError,
    required TResult Function(GetCartItemSuccess value) getCartItemSuccess,
    required TResult Function(DeleteCartItemError value) deleteCartItemError,
    required TResult Function(DeleteCartItemLoading value)
        deleteCartItemLoading,
    required TResult Function(DeleteCartLoading value) deleteCartLoading,
    required TResult Function(ApplyCouponLoading value) applyCouponLoading,
    required TResult Function(UpdateQuantityItemLoading value)
        updateQuantityItemLoading,
  }) {
    return getCartItemLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddItemToCartLoading value)? addItemToCartLoading,
    TResult? Function(AddItemToCartSuccess value)? addItemToCartSuccess,
    TResult? Function(UpdateQuantityNumber value)? updateQuantityNumber,
    TResult? Function(GetCartItemLoading value)? getCartItemLoading,
    TResult? Function(GetCartItemError value)? getCartItemError,
    TResult? Function(GetCartItemSuccess value)? getCartItemSuccess,
    TResult? Function(DeleteCartItemError value)? deleteCartItemError,
    TResult? Function(DeleteCartItemLoading value)? deleteCartItemLoading,
    TResult? Function(DeleteCartLoading value)? deleteCartLoading,
    TResult? Function(ApplyCouponLoading value)? applyCouponLoading,
    TResult? Function(UpdateQuantityItemLoading value)?
        updateQuantityItemLoading,
  }) {
    return getCartItemLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddItemToCartLoading value)? addItemToCartLoading,
    TResult Function(AddItemToCartSuccess value)? addItemToCartSuccess,
    TResult Function(UpdateQuantityNumber value)? updateQuantityNumber,
    TResult Function(GetCartItemLoading value)? getCartItemLoading,
    TResult Function(GetCartItemError value)? getCartItemError,
    TResult Function(GetCartItemSuccess value)? getCartItemSuccess,
    TResult Function(DeleteCartItemError value)? deleteCartItemError,
    TResult Function(DeleteCartItemLoading value)? deleteCartItemLoading,
    TResult Function(DeleteCartLoading value)? deleteCartLoading,
    TResult Function(ApplyCouponLoading value)? applyCouponLoading,
    TResult Function(UpdateQuantityItemLoading value)?
        updateQuantityItemLoading,
    required TResult orElse(),
  }) {
    if (getCartItemLoading != null) {
      return getCartItemLoading(this);
    }
    return orElse();
  }
}

abstract class GetCartItemLoading implements CartState {
  const factory GetCartItemLoading() = _$GetCartItemLoadingImpl;
}

/// @nodoc
abstract class _$$GetCartItemErrorImplCopyWith<$Res> {
  factory _$$GetCartItemErrorImplCopyWith(_$GetCartItemErrorImpl value,
          $Res Function(_$GetCartItemErrorImpl) then) =
      __$$GetCartItemErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$GetCartItemErrorImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$GetCartItemErrorImpl>
    implements _$$GetCartItemErrorImplCopyWith<$Res> {
  __$$GetCartItemErrorImplCopyWithImpl(_$GetCartItemErrorImpl _value,
      $Res Function(_$GetCartItemErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$GetCartItemErrorImpl(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$GetCartItemErrorImpl implements GetCartItemError {
  const _$GetCartItemErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'CartState.getCartItemError(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCartItemErrorImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCartItemErrorImplCopyWith<_$GetCartItemErrorImpl> get copyWith =>
      __$$GetCartItemErrorImplCopyWithImpl<_$GetCartItemErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String id) addItemToCartLoading,
    required TResult Function(CartResponse data, int quantity)
        addItemToCartSuccess,
    required TResult Function(int quantity) updateQuantityNumber,
    required TResult Function() getCartItemLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getCartItemError,
    required TResult Function(CartResponse? data) getCartItemSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) deleteCartItemError,
    required TResult Function() deleteCartItemLoading,
    required TResult Function() deleteCartLoading,
    required TResult Function() applyCouponLoading,
    required TResult Function(String id, int quantity)
        updateQuantityItemLoading,
  }) {
    return getCartItemError(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String id)? addItemToCartLoading,
    TResult? Function(CartResponse data, int quantity)? addItemToCartSuccess,
    TResult? Function(int quantity)? updateQuantityNumber,
    TResult? Function()? getCartItemLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getCartItemError,
    TResult? Function(CartResponse? data)? getCartItemSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? deleteCartItemError,
    TResult? Function()? deleteCartItemLoading,
    TResult? Function()? deleteCartLoading,
    TResult? Function()? applyCouponLoading,
    TResult? Function(String id, int quantity)? updateQuantityItemLoading,
  }) {
    return getCartItemError?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String id)? addItemToCartLoading,
    TResult Function(CartResponse data, int quantity)? addItemToCartSuccess,
    TResult Function(int quantity)? updateQuantityNumber,
    TResult Function()? getCartItemLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getCartItemError,
    TResult Function(CartResponse? data)? getCartItemSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? deleteCartItemError,
    TResult Function()? deleteCartItemLoading,
    TResult Function()? deleteCartLoading,
    TResult Function()? applyCouponLoading,
    TResult Function(String id, int quantity)? updateQuantityItemLoading,
    required TResult orElse(),
  }) {
    if (getCartItemError != null) {
      return getCartItemError(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AddItemToCartLoading value) addItemToCartLoading,
    required TResult Function(AddItemToCartSuccess value) addItemToCartSuccess,
    required TResult Function(UpdateQuantityNumber value) updateQuantityNumber,
    required TResult Function(GetCartItemLoading value) getCartItemLoading,
    required TResult Function(GetCartItemError value) getCartItemError,
    required TResult Function(GetCartItemSuccess value) getCartItemSuccess,
    required TResult Function(DeleteCartItemError value) deleteCartItemError,
    required TResult Function(DeleteCartItemLoading value)
        deleteCartItemLoading,
    required TResult Function(DeleteCartLoading value) deleteCartLoading,
    required TResult Function(ApplyCouponLoading value) applyCouponLoading,
    required TResult Function(UpdateQuantityItemLoading value)
        updateQuantityItemLoading,
  }) {
    return getCartItemError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddItemToCartLoading value)? addItemToCartLoading,
    TResult? Function(AddItemToCartSuccess value)? addItemToCartSuccess,
    TResult? Function(UpdateQuantityNumber value)? updateQuantityNumber,
    TResult? Function(GetCartItemLoading value)? getCartItemLoading,
    TResult? Function(GetCartItemError value)? getCartItemError,
    TResult? Function(GetCartItemSuccess value)? getCartItemSuccess,
    TResult? Function(DeleteCartItemError value)? deleteCartItemError,
    TResult? Function(DeleteCartItemLoading value)? deleteCartItemLoading,
    TResult? Function(DeleteCartLoading value)? deleteCartLoading,
    TResult? Function(ApplyCouponLoading value)? applyCouponLoading,
    TResult? Function(UpdateQuantityItemLoading value)?
        updateQuantityItemLoading,
  }) {
    return getCartItemError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddItemToCartLoading value)? addItemToCartLoading,
    TResult Function(AddItemToCartSuccess value)? addItemToCartSuccess,
    TResult Function(UpdateQuantityNumber value)? updateQuantityNumber,
    TResult Function(GetCartItemLoading value)? getCartItemLoading,
    TResult Function(GetCartItemError value)? getCartItemError,
    TResult Function(GetCartItemSuccess value)? getCartItemSuccess,
    TResult Function(DeleteCartItemError value)? deleteCartItemError,
    TResult Function(DeleteCartItemLoading value)? deleteCartItemLoading,
    TResult Function(DeleteCartLoading value)? deleteCartLoading,
    TResult Function(ApplyCouponLoading value)? applyCouponLoading,
    TResult Function(UpdateQuantityItemLoading value)?
        updateQuantityItemLoading,
    required TResult orElse(),
  }) {
    if (getCartItemError != null) {
      return getCartItemError(this);
    }
    return orElse();
  }
}

abstract class GetCartItemError implements CartState {
  const factory GetCartItemError(final ApiErrorModel apiErrorModel) =
      _$GetCartItemErrorImpl;

  ApiErrorModel get apiErrorModel;
  @JsonKey(ignore: true)
  _$$GetCartItemErrorImplCopyWith<_$GetCartItemErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCartItemSuccessImplCopyWith<$Res> {
  factory _$$GetCartItemSuccessImplCopyWith(_$GetCartItemSuccessImpl value,
          $Res Function(_$GetCartItemSuccessImpl) then) =
      __$$GetCartItemSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CartResponse? data});
}

/// @nodoc
class __$$GetCartItemSuccessImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$GetCartItemSuccessImpl>
    implements _$$GetCartItemSuccessImplCopyWith<$Res> {
  __$$GetCartItemSuccessImplCopyWithImpl(_$GetCartItemSuccessImpl _value,
      $Res Function(_$GetCartItemSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetCartItemSuccessImpl(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CartResponse?,
    ));
  }
}

/// @nodoc

class _$GetCartItemSuccessImpl implements GetCartItemSuccess {
  const _$GetCartItemSuccessImpl(this.data);

  @override
  final CartResponse? data;

  @override
  String toString() {
    return 'CartState.getCartItemSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCartItemSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCartItemSuccessImplCopyWith<_$GetCartItemSuccessImpl> get copyWith =>
      __$$GetCartItemSuccessImplCopyWithImpl<_$GetCartItemSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String id) addItemToCartLoading,
    required TResult Function(CartResponse data, int quantity)
        addItemToCartSuccess,
    required TResult Function(int quantity) updateQuantityNumber,
    required TResult Function() getCartItemLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getCartItemError,
    required TResult Function(CartResponse? data) getCartItemSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) deleteCartItemError,
    required TResult Function() deleteCartItemLoading,
    required TResult Function() deleteCartLoading,
    required TResult Function() applyCouponLoading,
    required TResult Function(String id, int quantity)
        updateQuantityItemLoading,
  }) {
    return getCartItemSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String id)? addItemToCartLoading,
    TResult? Function(CartResponse data, int quantity)? addItemToCartSuccess,
    TResult? Function(int quantity)? updateQuantityNumber,
    TResult? Function()? getCartItemLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getCartItemError,
    TResult? Function(CartResponse? data)? getCartItemSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? deleteCartItemError,
    TResult? Function()? deleteCartItemLoading,
    TResult? Function()? deleteCartLoading,
    TResult? Function()? applyCouponLoading,
    TResult? Function(String id, int quantity)? updateQuantityItemLoading,
  }) {
    return getCartItemSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String id)? addItemToCartLoading,
    TResult Function(CartResponse data, int quantity)? addItemToCartSuccess,
    TResult Function(int quantity)? updateQuantityNumber,
    TResult Function()? getCartItemLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getCartItemError,
    TResult Function(CartResponse? data)? getCartItemSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? deleteCartItemError,
    TResult Function()? deleteCartItemLoading,
    TResult Function()? deleteCartLoading,
    TResult Function()? applyCouponLoading,
    TResult Function(String id, int quantity)? updateQuantityItemLoading,
    required TResult orElse(),
  }) {
    if (getCartItemSuccess != null) {
      return getCartItemSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AddItemToCartLoading value) addItemToCartLoading,
    required TResult Function(AddItemToCartSuccess value) addItemToCartSuccess,
    required TResult Function(UpdateQuantityNumber value) updateQuantityNumber,
    required TResult Function(GetCartItemLoading value) getCartItemLoading,
    required TResult Function(GetCartItemError value) getCartItemError,
    required TResult Function(GetCartItemSuccess value) getCartItemSuccess,
    required TResult Function(DeleteCartItemError value) deleteCartItemError,
    required TResult Function(DeleteCartItemLoading value)
        deleteCartItemLoading,
    required TResult Function(DeleteCartLoading value) deleteCartLoading,
    required TResult Function(ApplyCouponLoading value) applyCouponLoading,
    required TResult Function(UpdateQuantityItemLoading value)
        updateQuantityItemLoading,
  }) {
    return getCartItemSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddItemToCartLoading value)? addItemToCartLoading,
    TResult? Function(AddItemToCartSuccess value)? addItemToCartSuccess,
    TResult? Function(UpdateQuantityNumber value)? updateQuantityNumber,
    TResult? Function(GetCartItemLoading value)? getCartItemLoading,
    TResult? Function(GetCartItemError value)? getCartItemError,
    TResult? Function(GetCartItemSuccess value)? getCartItemSuccess,
    TResult? Function(DeleteCartItemError value)? deleteCartItemError,
    TResult? Function(DeleteCartItemLoading value)? deleteCartItemLoading,
    TResult? Function(DeleteCartLoading value)? deleteCartLoading,
    TResult? Function(ApplyCouponLoading value)? applyCouponLoading,
    TResult? Function(UpdateQuantityItemLoading value)?
        updateQuantityItemLoading,
  }) {
    return getCartItemSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddItemToCartLoading value)? addItemToCartLoading,
    TResult Function(AddItemToCartSuccess value)? addItemToCartSuccess,
    TResult Function(UpdateQuantityNumber value)? updateQuantityNumber,
    TResult Function(GetCartItemLoading value)? getCartItemLoading,
    TResult Function(GetCartItemError value)? getCartItemError,
    TResult Function(GetCartItemSuccess value)? getCartItemSuccess,
    TResult Function(DeleteCartItemError value)? deleteCartItemError,
    TResult Function(DeleteCartItemLoading value)? deleteCartItemLoading,
    TResult Function(DeleteCartLoading value)? deleteCartLoading,
    TResult Function(ApplyCouponLoading value)? applyCouponLoading,
    TResult Function(UpdateQuantityItemLoading value)?
        updateQuantityItemLoading,
    required TResult orElse(),
  }) {
    if (getCartItemSuccess != null) {
      return getCartItemSuccess(this);
    }
    return orElse();
  }
}

abstract class GetCartItemSuccess implements CartState {
  const factory GetCartItemSuccess(final CartResponse? data) =
      _$GetCartItemSuccessImpl;

  CartResponse? get data;
  @JsonKey(ignore: true)
  _$$GetCartItemSuccessImplCopyWith<_$GetCartItemSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCartItemErrorImplCopyWith<$Res> {
  factory _$$DeleteCartItemErrorImplCopyWith(_$DeleteCartItemErrorImpl value,
          $Res Function(_$DeleteCartItemErrorImpl) then) =
      __$$DeleteCartItemErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$DeleteCartItemErrorImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$DeleteCartItemErrorImpl>
    implements _$$DeleteCartItemErrorImplCopyWith<$Res> {
  __$$DeleteCartItemErrorImplCopyWithImpl(_$DeleteCartItemErrorImpl _value,
      $Res Function(_$DeleteCartItemErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$DeleteCartItemErrorImpl(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$DeleteCartItemErrorImpl implements DeleteCartItemError {
  const _$DeleteCartItemErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'CartState.deleteCartItemError(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCartItemErrorImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCartItemErrorImplCopyWith<_$DeleteCartItemErrorImpl> get copyWith =>
      __$$DeleteCartItemErrorImplCopyWithImpl<_$DeleteCartItemErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String id) addItemToCartLoading,
    required TResult Function(CartResponse data, int quantity)
        addItemToCartSuccess,
    required TResult Function(int quantity) updateQuantityNumber,
    required TResult Function() getCartItemLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getCartItemError,
    required TResult Function(CartResponse? data) getCartItemSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) deleteCartItemError,
    required TResult Function() deleteCartItemLoading,
    required TResult Function() deleteCartLoading,
    required TResult Function() applyCouponLoading,
    required TResult Function(String id, int quantity)
        updateQuantityItemLoading,
  }) {
    return deleteCartItemError(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String id)? addItemToCartLoading,
    TResult? Function(CartResponse data, int quantity)? addItemToCartSuccess,
    TResult? Function(int quantity)? updateQuantityNumber,
    TResult? Function()? getCartItemLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getCartItemError,
    TResult? Function(CartResponse? data)? getCartItemSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? deleteCartItemError,
    TResult? Function()? deleteCartItemLoading,
    TResult? Function()? deleteCartLoading,
    TResult? Function()? applyCouponLoading,
    TResult? Function(String id, int quantity)? updateQuantityItemLoading,
  }) {
    return deleteCartItemError?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String id)? addItemToCartLoading,
    TResult Function(CartResponse data, int quantity)? addItemToCartSuccess,
    TResult Function(int quantity)? updateQuantityNumber,
    TResult Function()? getCartItemLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getCartItemError,
    TResult Function(CartResponse? data)? getCartItemSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? deleteCartItemError,
    TResult Function()? deleteCartItemLoading,
    TResult Function()? deleteCartLoading,
    TResult Function()? applyCouponLoading,
    TResult Function(String id, int quantity)? updateQuantityItemLoading,
    required TResult orElse(),
  }) {
    if (deleteCartItemError != null) {
      return deleteCartItemError(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AddItemToCartLoading value) addItemToCartLoading,
    required TResult Function(AddItemToCartSuccess value) addItemToCartSuccess,
    required TResult Function(UpdateQuantityNumber value) updateQuantityNumber,
    required TResult Function(GetCartItemLoading value) getCartItemLoading,
    required TResult Function(GetCartItemError value) getCartItemError,
    required TResult Function(GetCartItemSuccess value) getCartItemSuccess,
    required TResult Function(DeleteCartItemError value) deleteCartItemError,
    required TResult Function(DeleteCartItemLoading value)
        deleteCartItemLoading,
    required TResult Function(DeleteCartLoading value) deleteCartLoading,
    required TResult Function(ApplyCouponLoading value) applyCouponLoading,
    required TResult Function(UpdateQuantityItemLoading value)
        updateQuantityItemLoading,
  }) {
    return deleteCartItemError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddItemToCartLoading value)? addItemToCartLoading,
    TResult? Function(AddItemToCartSuccess value)? addItemToCartSuccess,
    TResult? Function(UpdateQuantityNumber value)? updateQuantityNumber,
    TResult? Function(GetCartItemLoading value)? getCartItemLoading,
    TResult? Function(GetCartItemError value)? getCartItemError,
    TResult? Function(GetCartItemSuccess value)? getCartItemSuccess,
    TResult? Function(DeleteCartItemError value)? deleteCartItemError,
    TResult? Function(DeleteCartItemLoading value)? deleteCartItemLoading,
    TResult? Function(DeleteCartLoading value)? deleteCartLoading,
    TResult? Function(ApplyCouponLoading value)? applyCouponLoading,
    TResult? Function(UpdateQuantityItemLoading value)?
        updateQuantityItemLoading,
  }) {
    return deleteCartItemError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddItemToCartLoading value)? addItemToCartLoading,
    TResult Function(AddItemToCartSuccess value)? addItemToCartSuccess,
    TResult Function(UpdateQuantityNumber value)? updateQuantityNumber,
    TResult Function(GetCartItemLoading value)? getCartItemLoading,
    TResult Function(GetCartItemError value)? getCartItemError,
    TResult Function(GetCartItemSuccess value)? getCartItemSuccess,
    TResult Function(DeleteCartItemError value)? deleteCartItemError,
    TResult Function(DeleteCartItemLoading value)? deleteCartItemLoading,
    TResult Function(DeleteCartLoading value)? deleteCartLoading,
    TResult Function(ApplyCouponLoading value)? applyCouponLoading,
    TResult Function(UpdateQuantityItemLoading value)?
        updateQuantityItemLoading,
    required TResult orElse(),
  }) {
    if (deleteCartItemError != null) {
      return deleteCartItemError(this);
    }
    return orElse();
  }
}

abstract class DeleteCartItemError implements CartState {
  const factory DeleteCartItemError(final ApiErrorModel apiErrorModel) =
      _$DeleteCartItemErrorImpl;

  ApiErrorModel get apiErrorModel;
  @JsonKey(ignore: true)
  _$$DeleteCartItemErrorImplCopyWith<_$DeleteCartItemErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCartItemLoadingImplCopyWith<$Res> {
  factory _$$DeleteCartItemLoadingImplCopyWith(
          _$DeleteCartItemLoadingImpl value,
          $Res Function(_$DeleteCartItemLoadingImpl) then) =
      __$$DeleteCartItemLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteCartItemLoadingImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$DeleteCartItemLoadingImpl>
    implements _$$DeleteCartItemLoadingImplCopyWith<$Res> {
  __$$DeleteCartItemLoadingImplCopyWithImpl(_$DeleteCartItemLoadingImpl _value,
      $Res Function(_$DeleteCartItemLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteCartItemLoadingImpl implements DeleteCartItemLoading {
  const _$DeleteCartItemLoadingImpl();

  @override
  String toString() {
    return 'CartState.deleteCartItemLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCartItemLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String id) addItemToCartLoading,
    required TResult Function(CartResponse data, int quantity)
        addItemToCartSuccess,
    required TResult Function(int quantity) updateQuantityNumber,
    required TResult Function() getCartItemLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getCartItemError,
    required TResult Function(CartResponse? data) getCartItemSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) deleteCartItemError,
    required TResult Function() deleteCartItemLoading,
    required TResult Function() deleteCartLoading,
    required TResult Function() applyCouponLoading,
    required TResult Function(String id, int quantity)
        updateQuantityItemLoading,
  }) {
    return deleteCartItemLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String id)? addItemToCartLoading,
    TResult? Function(CartResponse data, int quantity)? addItemToCartSuccess,
    TResult? Function(int quantity)? updateQuantityNumber,
    TResult? Function()? getCartItemLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getCartItemError,
    TResult? Function(CartResponse? data)? getCartItemSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? deleteCartItemError,
    TResult? Function()? deleteCartItemLoading,
    TResult? Function()? deleteCartLoading,
    TResult? Function()? applyCouponLoading,
    TResult? Function(String id, int quantity)? updateQuantityItemLoading,
  }) {
    return deleteCartItemLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String id)? addItemToCartLoading,
    TResult Function(CartResponse data, int quantity)? addItemToCartSuccess,
    TResult Function(int quantity)? updateQuantityNumber,
    TResult Function()? getCartItemLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getCartItemError,
    TResult Function(CartResponse? data)? getCartItemSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? deleteCartItemError,
    TResult Function()? deleteCartItemLoading,
    TResult Function()? deleteCartLoading,
    TResult Function()? applyCouponLoading,
    TResult Function(String id, int quantity)? updateQuantityItemLoading,
    required TResult orElse(),
  }) {
    if (deleteCartItemLoading != null) {
      return deleteCartItemLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AddItemToCartLoading value) addItemToCartLoading,
    required TResult Function(AddItemToCartSuccess value) addItemToCartSuccess,
    required TResult Function(UpdateQuantityNumber value) updateQuantityNumber,
    required TResult Function(GetCartItemLoading value) getCartItemLoading,
    required TResult Function(GetCartItemError value) getCartItemError,
    required TResult Function(GetCartItemSuccess value) getCartItemSuccess,
    required TResult Function(DeleteCartItemError value) deleteCartItemError,
    required TResult Function(DeleteCartItemLoading value)
        deleteCartItemLoading,
    required TResult Function(DeleteCartLoading value) deleteCartLoading,
    required TResult Function(ApplyCouponLoading value) applyCouponLoading,
    required TResult Function(UpdateQuantityItemLoading value)
        updateQuantityItemLoading,
  }) {
    return deleteCartItemLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddItemToCartLoading value)? addItemToCartLoading,
    TResult? Function(AddItemToCartSuccess value)? addItemToCartSuccess,
    TResult? Function(UpdateQuantityNumber value)? updateQuantityNumber,
    TResult? Function(GetCartItemLoading value)? getCartItemLoading,
    TResult? Function(GetCartItemError value)? getCartItemError,
    TResult? Function(GetCartItemSuccess value)? getCartItemSuccess,
    TResult? Function(DeleteCartItemError value)? deleteCartItemError,
    TResult? Function(DeleteCartItemLoading value)? deleteCartItemLoading,
    TResult? Function(DeleteCartLoading value)? deleteCartLoading,
    TResult? Function(ApplyCouponLoading value)? applyCouponLoading,
    TResult? Function(UpdateQuantityItemLoading value)?
        updateQuantityItemLoading,
  }) {
    return deleteCartItemLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddItemToCartLoading value)? addItemToCartLoading,
    TResult Function(AddItemToCartSuccess value)? addItemToCartSuccess,
    TResult Function(UpdateQuantityNumber value)? updateQuantityNumber,
    TResult Function(GetCartItemLoading value)? getCartItemLoading,
    TResult Function(GetCartItemError value)? getCartItemError,
    TResult Function(GetCartItemSuccess value)? getCartItemSuccess,
    TResult Function(DeleteCartItemError value)? deleteCartItemError,
    TResult Function(DeleteCartItemLoading value)? deleteCartItemLoading,
    TResult Function(DeleteCartLoading value)? deleteCartLoading,
    TResult Function(ApplyCouponLoading value)? applyCouponLoading,
    TResult Function(UpdateQuantityItemLoading value)?
        updateQuantityItemLoading,
    required TResult orElse(),
  }) {
    if (deleteCartItemLoading != null) {
      return deleteCartItemLoading(this);
    }
    return orElse();
  }
}

abstract class DeleteCartItemLoading implements CartState {
  const factory DeleteCartItemLoading() = _$DeleteCartItemLoadingImpl;
}

/// @nodoc
abstract class _$$DeleteCartLoadingImplCopyWith<$Res> {
  factory _$$DeleteCartLoadingImplCopyWith(_$DeleteCartLoadingImpl value,
          $Res Function(_$DeleteCartLoadingImpl) then) =
      __$$DeleteCartLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteCartLoadingImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$DeleteCartLoadingImpl>
    implements _$$DeleteCartLoadingImplCopyWith<$Res> {
  __$$DeleteCartLoadingImplCopyWithImpl(_$DeleteCartLoadingImpl _value,
      $Res Function(_$DeleteCartLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteCartLoadingImpl implements DeleteCartLoading {
  const _$DeleteCartLoadingImpl();

  @override
  String toString() {
    return 'CartState.deleteCartLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteCartLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String id) addItemToCartLoading,
    required TResult Function(CartResponse data, int quantity)
        addItemToCartSuccess,
    required TResult Function(int quantity) updateQuantityNumber,
    required TResult Function() getCartItemLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getCartItemError,
    required TResult Function(CartResponse? data) getCartItemSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) deleteCartItemError,
    required TResult Function() deleteCartItemLoading,
    required TResult Function() deleteCartLoading,
    required TResult Function() applyCouponLoading,
    required TResult Function(String id, int quantity)
        updateQuantityItemLoading,
  }) {
    return deleteCartLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String id)? addItemToCartLoading,
    TResult? Function(CartResponse data, int quantity)? addItemToCartSuccess,
    TResult? Function(int quantity)? updateQuantityNumber,
    TResult? Function()? getCartItemLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getCartItemError,
    TResult? Function(CartResponse? data)? getCartItemSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? deleteCartItemError,
    TResult? Function()? deleteCartItemLoading,
    TResult? Function()? deleteCartLoading,
    TResult? Function()? applyCouponLoading,
    TResult? Function(String id, int quantity)? updateQuantityItemLoading,
  }) {
    return deleteCartLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String id)? addItemToCartLoading,
    TResult Function(CartResponse data, int quantity)? addItemToCartSuccess,
    TResult Function(int quantity)? updateQuantityNumber,
    TResult Function()? getCartItemLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getCartItemError,
    TResult Function(CartResponse? data)? getCartItemSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? deleteCartItemError,
    TResult Function()? deleteCartItemLoading,
    TResult Function()? deleteCartLoading,
    TResult Function()? applyCouponLoading,
    TResult Function(String id, int quantity)? updateQuantityItemLoading,
    required TResult orElse(),
  }) {
    if (deleteCartLoading != null) {
      return deleteCartLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AddItemToCartLoading value) addItemToCartLoading,
    required TResult Function(AddItemToCartSuccess value) addItemToCartSuccess,
    required TResult Function(UpdateQuantityNumber value) updateQuantityNumber,
    required TResult Function(GetCartItemLoading value) getCartItemLoading,
    required TResult Function(GetCartItemError value) getCartItemError,
    required TResult Function(GetCartItemSuccess value) getCartItemSuccess,
    required TResult Function(DeleteCartItemError value) deleteCartItemError,
    required TResult Function(DeleteCartItemLoading value)
        deleteCartItemLoading,
    required TResult Function(DeleteCartLoading value) deleteCartLoading,
    required TResult Function(ApplyCouponLoading value) applyCouponLoading,
    required TResult Function(UpdateQuantityItemLoading value)
        updateQuantityItemLoading,
  }) {
    return deleteCartLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddItemToCartLoading value)? addItemToCartLoading,
    TResult? Function(AddItemToCartSuccess value)? addItemToCartSuccess,
    TResult? Function(UpdateQuantityNumber value)? updateQuantityNumber,
    TResult? Function(GetCartItemLoading value)? getCartItemLoading,
    TResult? Function(GetCartItemError value)? getCartItemError,
    TResult? Function(GetCartItemSuccess value)? getCartItemSuccess,
    TResult? Function(DeleteCartItemError value)? deleteCartItemError,
    TResult? Function(DeleteCartItemLoading value)? deleteCartItemLoading,
    TResult? Function(DeleteCartLoading value)? deleteCartLoading,
    TResult? Function(ApplyCouponLoading value)? applyCouponLoading,
    TResult? Function(UpdateQuantityItemLoading value)?
        updateQuantityItemLoading,
  }) {
    return deleteCartLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddItemToCartLoading value)? addItemToCartLoading,
    TResult Function(AddItemToCartSuccess value)? addItemToCartSuccess,
    TResult Function(UpdateQuantityNumber value)? updateQuantityNumber,
    TResult Function(GetCartItemLoading value)? getCartItemLoading,
    TResult Function(GetCartItemError value)? getCartItemError,
    TResult Function(GetCartItemSuccess value)? getCartItemSuccess,
    TResult Function(DeleteCartItemError value)? deleteCartItemError,
    TResult Function(DeleteCartItemLoading value)? deleteCartItemLoading,
    TResult Function(DeleteCartLoading value)? deleteCartLoading,
    TResult Function(ApplyCouponLoading value)? applyCouponLoading,
    TResult Function(UpdateQuantityItemLoading value)?
        updateQuantityItemLoading,
    required TResult orElse(),
  }) {
    if (deleteCartLoading != null) {
      return deleteCartLoading(this);
    }
    return orElse();
  }
}

abstract class DeleteCartLoading implements CartState {
  const factory DeleteCartLoading() = _$DeleteCartLoadingImpl;
}

/// @nodoc
abstract class _$$ApplyCouponLoadingImplCopyWith<$Res> {
  factory _$$ApplyCouponLoadingImplCopyWith(_$ApplyCouponLoadingImpl value,
          $Res Function(_$ApplyCouponLoadingImpl) then) =
      __$$ApplyCouponLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApplyCouponLoadingImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$ApplyCouponLoadingImpl>
    implements _$$ApplyCouponLoadingImplCopyWith<$Res> {
  __$$ApplyCouponLoadingImplCopyWithImpl(_$ApplyCouponLoadingImpl _value,
      $Res Function(_$ApplyCouponLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ApplyCouponLoadingImpl implements ApplyCouponLoading {
  const _$ApplyCouponLoadingImpl();

  @override
  String toString() {
    return 'CartState.applyCouponLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ApplyCouponLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String id) addItemToCartLoading,
    required TResult Function(CartResponse data, int quantity)
        addItemToCartSuccess,
    required TResult Function(int quantity) updateQuantityNumber,
    required TResult Function() getCartItemLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getCartItemError,
    required TResult Function(CartResponse? data) getCartItemSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) deleteCartItemError,
    required TResult Function() deleteCartItemLoading,
    required TResult Function() deleteCartLoading,
    required TResult Function() applyCouponLoading,
    required TResult Function(String id, int quantity)
        updateQuantityItemLoading,
  }) {
    return applyCouponLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String id)? addItemToCartLoading,
    TResult? Function(CartResponse data, int quantity)? addItemToCartSuccess,
    TResult? Function(int quantity)? updateQuantityNumber,
    TResult? Function()? getCartItemLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getCartItemError,
    TResult? Function(CartResponse? data)? getCartItemSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? deleteCartItemError,
    TResult? Function()? deleteCartItemLoading,
    TResult? Function()? deleteCartLoading,
    TResult? Function()? applyCouponLoading,
    TResult? Function(String id, int quantity)? updateQuantityItemLoading,
  }) {
    return applyCouponLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String id)? addItemToCartLoading,
    TResult Function(CartResponse data, int quantity)? addItemToCartSuccess,
    TResult Function(int quantity)? updateQuantityNumber,
    TResult Function()? getCartItemLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getCartItemError,
    TResult Function(CartResponse? data)? getCartItemSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? deleteCartItemError,
    TResult Function()? deleteCartItemLoading,
    TResult Function()? deleteCartLoading,
    TResult Function()? applyCouponLoading,
    TResult Function(String id, int quantity)? updateQuantityItemLoading,
    required TResult orElse(),
  }) {
    if (applyCouponLoading != null) {
      return applyCouponLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AddItemToCartLoading value) addItemToCartLoading,
    required TResult Function(AddItemToCartSuccess value) addItemToCartSuccess,
    required TResult Function(UpdateQuantityNumber value) updateQuantityNumber,
    required TResult Function(GetCartItemLoading value) getCartItemLoading,
    required TResult Function(GetCartItemError value) getCartItemError,
    required TResult Function(GetCartItemSuccess value) getCartItemSuccess,
    required TResult Function(DeleteCartItemError value) deleteCartItemError,
    required TResult Function(DeleteCartItemLoading value)
        deleteCartItemLoading,
    required TResult Function(DeleteCartLoading value) deleteCartLoading,
    required TResult Function(ApplyCouponLoading value) applyCouponLoading,
    required TResult Function(UpdateQuantityItemLoading value)
        updateQuantityItemLoading,
  }) {
    return applyCouponLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddItemToCartLoading value)? addItemToCartLoading,
    TResult? Function(AddItemToCartSuccess value)? addItemToCartSuccess,
    TResult? Function(UpdateQuantityNumber value)? updateQuantityNumber,
    TResult? Function(GetCartItemLoading value)? getCartItemLoading,
    TResult? Function(GetCartItemError value)? getCartItemError,
    TResult? Function(GetCartItemSuccess value)? getCartItemSuccess,
    TResult? Function(DeleteCartItemError value)? deleteCartItemError,
    TResult? Function(DeleteCartItemLoading value)? deleteCartItemLoading,
    TResult? Function(DeleteCartLoading value)? deleteCartLoading,
    TResult? Function(ApplyCouponLoading value)? applyCouponLoading,
    TResult? Function(UpdateQuantityItemLoading value)?
        updateQuantityItemLoading,
  }) {
    return applyCouponLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddItemToCartLoading value)? addItemToCartLoading,
    TResult Function(AddItemToCartSuccess value)? addItemToCartSuccess,
    TResult Function(UpdateQuantityNumber value)? updateQuantityNumber,
    TResult Function(GetCartItemLoading value)? getCartItemLoading,
    TResult Function(GetCartItemError value)? getCartItemError,
    TResult Function(GetCartItemSuccess value)? getCartItemSuccess,
    TResult Function(DeleteCartItemError value)? deleteCartItemError,
    TResult Function(DeleteCartItemLoading value)? deleteCartItemLoading,
    TResult Function(DeleteCartLoading value)? deleteCartLoading,
    TResult Function(ApplyCouponLoading value)? applyCouponLoading,
    TResult Function(UpdateQuantityItemLoading value)?
        updateQuantityItemLoading,
    required TResult orElse(),
  }) {
    if (applyCouponLoading != null) {
      return applyCouponLoading(this);
    }
    return orElse();
  }
}

abstract class ApplyCouponLoading implements CartState {
  const factory ApplyCouponLoading() = _$ApplyCouponLoadingImpl;
}

/// @nodoc
abstract class _$$UpdateQuantityItemLoadingImplCopyWith<$Res> {
  factory _$$UpdateQuantityItemLoadingImplCopyWith(
          _$UpdateQuantityItemLoadingImpl value,
          $Res Function(_$UpdateQuantityItemLoadingImpl) then) =
      __$$UpdateQuantityItemLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, int quantity});
}

/// @nodoc
class __$$UpdateQuantityItemLoadingImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$UpdateQuantityItemLoadingImpl>
    implements _$$UpdateQuantityItemLoadingImplCopyWith<$Res> {
  __$$UpdateQuantityItemLoadingImplCopyWithImpl(
      _$UpdateQuantityItemLoadingImpl _value,
      $Res Function(_$UpdateQuantityItemLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
  }) {
    return _then(_$UpdateQuantityItemLoadingImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateQuantityItemLoadingImpl implements UpdateQuantityItemLoading {
  const _$UpdateQuantityItemLoadingImpl(this.id, this.quantity);

  @override
  final String id;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartState.updateQuantityItemLoading(id: $id, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateQuantityItemLoadingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateQuantityItemLoadingImplCopyWith<_$UpdateQuantityItemLoadingImpl>
      get copyWith => __$$UpdateQuantityItemLoadingImplCopyWithImpl<
          _$UpdateQuantityItemLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String id) addItemToCartLoading,
    required TResult Function(CartResponse data, int quantity)
        addItemToCartSuccess,
    required TResult Function(int quantity) updateQuantityNumber,
    required TResult Function() getCartItemLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getCartItemError,
    required TResult Function(CartResponse? data) getCartItemSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) deleteCartItemError,
    required TResult Function() deleteCartItemLoading,
    required TResult Function() deleteCartLoading,
    required TResult Function() applyCouponLoading,
    required TResult Function(String id, int quantity)
        updateQuantityItemLoading,
  }) {
    return updateQuantityItemLoading(id, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String id)? addItemToCartLoading,
    TResult? Function(CartResponse data, int quantity)? addItemToCartSuccess,
    TResult? Function(int quantity)? updateQuantityNumber,
    TResult? Function()? getCartItemLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getCartItemError,
    TResult? Function(CartResponse? data)? getCartItemSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? deleteCartItemError,
    TResult? Function()? deleteCartItemLoading,
    TResult? Function()? deleteCartLoading,
    TResult? Function()? applyCouponLoading,
    TResult? Function(String id, int quantity)? updateQuantityItemLoading,
  }) {
    return updateQuantityItemLoading?.call(id, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String id)? addItemToCartLoading,
    TResult Function(CartResponse data, int quantity)? addItemToCartSuccess,
    TResult Function(int quantity)? updateQuantityNumber,
    TResult Function()? getCartItemLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getCartItemError,
    TResult Function(CartResponse? data)? getCartItemSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? deleteCartItemError,
    TResult Function()? deleteCartItemLoading,
    TResult Function()? deleteCartLoading,
    TResult Function()? applyCouponLoading,
    TResult Function(String id, int quantity)? updateQuantityItemLoading,
    required TResult orElse(),
  }) {
    if (updateQuantityItemLoading != null) {
      return updateQuantityItemLoading(id, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AddItemToCartLoading value) addItemToCartLoading,
    required TResult Function(AddItemToCartSuccess value) addItemToCartSuccess,
    required TResult Function(UpdateQuantityNumber value) updateQuantityNumber,
    required TResult Function(GetCartItemLoading value) getCartItemLoading,
    required TResult Function(GetCartItemError value) getCartItemError,
    required TResult Function(GetCartItemSuccess value) getCartItemSuccess,
    required TResult Function(DeleteCartItemError value) deleteCartItemError,
    required TResult Function(DeleteCartItemLoading value)
        deleteCartItemLoading,
    required TResult Function(DeleteCartLoading value) deleteCartLoading,
    required TResult Function(ApplyCouponLoading value) applyCouponLoading,
    required TResult Function(UpdateQuantityItemLoading value)
        updateQuantityItemLoading,
  }) {
    return updateQuantityItemLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddItemToCartLoading value)? addItemToCartLoading,
    TResult? Function(AddItemToCartSuccess value)? addItemToCartSuccess,
    TResult? Function(UpdateQuantityNumber value)? updateQuantityNumber,
    TResult? Function(GetCartItemLoading value)? getCartItemLoading,
    TResult? Function(GetCartItemError value)? getCartItemError,
    TResult? Function(GetCartItemSuccess value)? getCartItemSuccess,
    TResult? Function(DeleteCartItemError value)? deleteCartItemError,
    TResult? Function(DeleteCartItemLoading value)? deleteCartItemLoading,
    TResult? Function(DeleteCartLoading value)? deleteCartLoading,
    TResult? Function(ApplyCouponLoading value)? applyCouponLoading,
    TResult? Function(UpdateQuantityItemLoading value)?
        updateQuantityItemLoading,
  }) {
    return updateQuantityItemLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddItemToCartLoading value)? addItemToCartLoading,
    TResult Function(AddItemToCartSuccess value)? addItemToCartSuccess,
    TResult Function(UpdateQuantityNumber value)? updateQuantityNumber,
    TResult Function(GetCartItemLoading value)? getCartItemLoading,
    TResult Function(GetCartItemError value)? getCartItemError,
    TResult Function(GetCartItemSuccess value)? getCartItemSuccess,
    TResult Function(DeleteCartItemError value)? deleteCartItemError,
    TResult Function(DeleteCartItemLoading value)? deleteCartItemLoading,
    TResult Function(DeleteCartLoading value)? deleteCartLoading,
    TResult Function(ApplyCouponLoading value)? applyCouponLoading,
    TResult Function(UpdateQuantityItemLoading value)?
        updateQuantityItemLoading,
    required TResult orElse(),
  }) {
    if (updateQuantityItemLoading != null) {
      return updateQuantityItemLoading(this);
    }
    return orElse();
  }
}

abstract class UpdateQuantityItemLoading implements CartState {
  const factory UpdateQuantityItemLoading(final String id, final int quantity) =
      _$UpdateQuantityItemLoadingImpl;

  String get id;
  int get quantity;
  @JsonKey(ignore: true)
  _$$UpdateQuantityItemLoadingImplCopyWith<_$UpdateQuantityItemLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}
