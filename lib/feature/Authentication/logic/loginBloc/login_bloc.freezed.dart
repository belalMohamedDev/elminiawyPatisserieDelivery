// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String value) userLoginEmailAddress,
    required TResult Function(String value) userLoginPassword,
    required TResult Function() userShowLoginPassword,
    required TResult Function() userLoginButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String value)? userLoginEmailAddress,
    TResult? Function(String value)? userLoginPassword,
    TResult? Function()? userShowLoginPassword,
    TResult? Function()? userLoginButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String value)? userLoginEmailAddress,
    TResult Function(String value)? userLoginPassword,
    TResult Function()? userShowLoginPassword,
    TResult Function()? userLoginButton,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(UserLoginEmailAddress value)
        userLoginEmailAddress,
    required TResult Function(UserLoginPassword value) userLoginPassword,
    required TResult Function(UserShowLoginPassword value)
        userShowLoginPassword,
    required TResult Function(UserLoginButton value) userLoginButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(UserLoginEmailAddress value)? userLoginEmailAddress,
    TResult? Function(UserLoginPassword value)? userLoginPassword,
    TResult? Function(UserShowLoginPassword value)? userShowLoginPassword,
    TResult? Function(UserLoginButton value)? userLoginButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(UserLoginEmailAddress value)? userLoginEmailAddress,
    TResult Function(UserLoginPassword value)? userLoginPassword,
    TResult Function(UserShowLoginPassword value)? userShowLoginPassword,
    TResult Function(UserLoginButton value)? userLoginButton,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'LoginEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String value) userLoginEmailAddress,
    required TResult Function(String value) userLoginPassword,
    required TResult Function() userShowLoginPassword,
    required TResult Function() userLoginButton,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String value)? userLoginEmailAddress,
    TResult? Function(String value)? userLoginPassword,
    TResult? Function()? userShowLoginPassword,
    TResult? Function()? userLoginButton,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String value)? userLoginEmailAddress,
    TResult Function(String value)? userLoginPassword,
    TResult Function()? userShowLoginPassword,
    TResult Function()? userLoginButton,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(UserLoginEmailAddress value)
        userLoginEmailAddress,
    required TResult Function(UserLoginPassword value) userLoginPassword,
    required TResult Function(UserShowLoginPassword value)
        userShowLoginPassword,
    required TResult Function(UserLoginButton value) userLoginButton,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(UserLoginEmailAddress value)? userLoginEmailAddress,
    TResult? Function(UserLoginPassword value)? userLoginPassword,
    TResult? Function(UserShowLoginPassword value)? userShowLoginPassword,
    TResult? Function(UserLoginButton value)? userLoginButton,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(UserLoginEmailAddress value)? userLoginEmailAddress,
    TResult Function(UserLoginPassword value)? userLoginPassword,
    TResult Function(UserShowLoginPassword value)? userShowLoginPassword,
    TResult Function(UserLoginButton value)? userLoginButton,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LoginEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$UserLoginEmailAddressImplCopyWith<$Res> {
  factory _$$UserLoginEmailAddressImplCopyWith(
          _$UserLoginEmailAddressImpl value,
          $Res Function(_$UserLoginEmailAddressImpl) then) =
      __$$UserLoginEmailAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UserLoginEmailAddressImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$UserLoginEmailAddressImpl>
    implements _$$UserLoginEmailAddressImplCopyWith<$Res> {
  __$$UserLoginEmailAddressImplCopyWithImpl(_$UserLoginEmailAddressImpl _value,
      $Res Function(_$UserLoginEmailAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UserLoginEmailAddressImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserLoginEmailAddressImpl implements UserLoginEmailAddress {
  const _$UserLoginEmailAddressImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'LoginEvent.userLoginEmailAddress(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginEmailAddressImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginEmailAddressImplCopyWith<_$UserLoginEmailAddressImpl>
      get copyWith => __$$UserLoginEmailAddressImplCopyWithImpl<
          _$UserLoginEmailAddressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String value) userLoginEmailAddress,
    required TResult Function(String value) userLoginPassword,
    required TResult Function() userShowLoginPassword,
    required TResult Function() userLoginButton,
  }) {
    return userLoginEmailAddress(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String value)? userLoginEmailAddress,
    TResult? Function(String value)? userLoginPassword,
    TResult? Function()? userShowLoginPassword,
    TResult? Function()? userLoginButton,
  }) {
    return userLoginEmailAddress?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String value)? userLoginEmailAddress,
    TResult Function(String value)? userLoginPassword,
    TResult Function()? userShowLoginPassword,
    TResult Function()? userLoginButton,
    required TResult orElse(),
  }) {
    if (userLoginEmailAddress != null) {
      return userLoginEmailAddress(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(UserLoginEmailAddress value)
        userLoginEmailAddress,
    required TResult Function(UserLoginPassword value) userLoginPassword,
    required TResult Function(UserShowLoginPassword value)
        userShowLoginPassword,
    required TResult Function(UserLoginButton value) userLoginButton,
  }) {
    return userLoginEmailAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(UserLoginEmailAddress value)? userLoginEmailAddress,
    TResult? Function(UserLoginPassword value)? userLoginPassword,
    TResult? Function(UserShowLoginPassword value)? userShowLoginPassword,
    TResult? Function(UserLoginButton value)? userLoginButton,
  }) {
    return userLoginEmailAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(UserLoginEmailAddress value)? userLoginEmailAddress,
    TResult Function(UserLoginPassword value)? userLoginPassword,
    TResult Function(UserShowLoginPassword value)? userShowLoginPassword,
    TResult Function(UserLoginButton value)? userLoginButton,
    required TResult orElse(),
  }) {
    if (userLoginEmailAddress != null) {
      return userLoginEmailAddress(this);
    }
    return orElse();
  }
}

abstract class UserLoginEmailAddress implements LoginEvent {
  const factory UserLoginEmailAddress(final String value) =
      _$UserLoginEmailAddressImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$UserLoginEmailAddressImplCopyWith<_$UserLoginEmailAddressImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserLoginPasswordImplCopyWith<$Res> {
  factory _$$UserLoginPasswordImplCopyWith(_$UserLoginPasswordImpl value,
          $Res Function(_$UserLoginPasswordImpl) then) =
      __$$UserLoginPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UserLoginPasswordImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$UserLoginPasswordImpl>
    implements _$$UserLoginPasswordImplCopyWith<$Res> {
  __$$UserLoginPasswordImplCopyWithImpl(_$UserLoginPasswordImpl _value,
      $Res Function(_$UserLoginPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UserLoginPasswordImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserLoginPasswordImpl implements UserLoginPassword {
  const _$UserLoginPasswordImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'LoginEvent.userLoginPassword(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginPasswordImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginPasswordImplCopyWith<_$UserLoginPasswordImpl> get copyWith =>
      __$$UserLoginPasswordImplCopyWithImpl<_$UserLoginPasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String value) userLoginEmailAddress,
    required TResult Function(String value) userLoginPassword,
    required TResult Function() userShowLoginPassword,
    required TResult Function() userLoginButton,
  }) {
    return userLoginPassword(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String value)? userLoginEmailAddress,
    TResult? Function(String value)? userLoginPassword,
    TResult? Function()? userShowLoginPassword,
    TResult? Function()? userLoginButton,
  }) {
    return userLoginPassword?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String value)? userLoginEmailAddress,
    TResult Function(String value)? userLoginPassword,
    TResult Function()? userShowLoginPassword,
    TResult Function()? userLoginButton,
    required TResult orElse(),
  }) {
    if (userLoginPassword != null) {
      return userLoginPassword(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(UserLoginEmailAddress value)
        userLoginEmailAddress,
    required TResult Function(UserLoginPassword value) userLoginPassword,
    required TResult Function(UserShowLoginPassword value)
        userShowLoginPassword,
    required TResult Function(UserLoginButton value) userLoginButton,
  }) {
    return userLoginPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(UserLoginEmailAddress value)? userLoginEmailAddress,
    TResult? Function(UserLoginPassword value)? userLoginPassword,
    TResult? Function(UserShowLoginPassword value)? userShowLoginPassword,
    TResult? Function(UserLoginButton value)? userLoginButton,
  }) {
    return userLoginPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(UserLoginEmailAddress value)? userLoginEmailAddress,
    TResult Function(UserLoginPassword value)? userLoginPassword,
    TResult Function(UserShowLoginPassword value)? userShowLoginPassword,
    TResult Function(UserLoginButton value)? userLoginButton,
    required TResult orElse(),
  }) {
    if (userLoginPassword != null) {
      return userLoginPassword(this);
    }
    return orElse();
  }
}

abstract class UserLoginPassword implements LoginEvent {
  const factory UserLoginPassword(final String value) = _$UserLoginPasswordImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$UserLoginPasswordImplCopyWith<_$UserLoginPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserShowLoginPasswordImplCopyWith<$Res> {
  factory _$$UserShowLoginPasswordImplCopyWith(
          _$UserShowLoginPasswordImpl value,
          $Res Function(_$UserShowLoginPasswordImpl) then) =
      __$$UserShowLoginPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserShowLoginPasswordImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$UserShowLoginPasswordImpl>
    implements _$$UserShowLoginPasswordImplCopyWith<$Res> {
  __$$UserShowLoginPasswordImplCopyWithImpl(_$UserShowLoginPasswordImpl _value,
      $Res Function(_$UserShowLoginPasswordImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserShowLoginPasswordImpl implements UserShowLoginPassword {
  const _$UserShowLoginPasswordImpl();

  @override
  String toString() {
    return 'LoginEvent.userShowLoginPassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserShowLoginPasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String value) userLoginEmailAddress,
    required TResult Function(String value) userLoginPassword,
    required TResult Function() userShowLoginPassword,
    required TResult Function() userLoginButton,
  }) {
    return userShowLoginPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String value)? userLoginEmailAddress,
    TResult? Function(String value)? userLoginPassword,
    TResult? Function()? userShowLoginPassword,
    TResult? Function()? userLoginButton,
  }) {
    return userShowLoginPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String value)? userLoginEmailAddress,
    TResult Function(String value)? userLoginPassword,
    TResult Function()? userShowLoginPassword,
    TResult Function()? userLoginButton,
    required TResult orElse(),
  }) {
    if (userShowLoginPassword != null) {
      return userShowLoginPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(UserLoginEmailAddress value)
        userLoginEmailAddress,
    required TResult Function(UserLoginPassword value) userLoginPassword,
    required TResult Function(UserShowLoginPassword value)
        userShowLoginPassword,
    required TResult Function(UserLoginButton value) userLoginButton,
  }) {
    return userShowLoginPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(UserLoginEmailAddress value)? userLoginEmailAddress,
    TResult? Function(UserLoginPassword value)? userLoginPassword,
    TResult? Function(UserShowLoginPassword value)? userShowLoginPassword,
    TResult? Function(UserLoginButton value)? userLoginButton,
  }) {
    return userShowLoginPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(UserLoginEmailAddress value)? userLoginEmailAddress,
    TResult Function(UserLoginPassword value)? userLoginPassword,
    TResult Function(UserShowLoginPassword value)? userShowLoginPassword,
    TResult Function(UserLoginButton value)? userLoginButton,
    required TResult orElse(),
  }) {
    if (userShowLoginPassword != null) {
      return userShowLoginPassword(this);
    }
    return orElse();
  }
}

abstract class UserShowLoginPassword implements LoginEvent {
  const factory UserShowLoginPassword() = _$UserShowLoginPasswordImpl;
}

/// @nodoc
abstract class _$$UserLoginButtonImplCopyWith<$Res> {
  factory _$$UserLoginButtonImplCopyWith(_$UserLoginButtonImpl value,
          $Res Function(_$UserLoginButtonImpl) then) =
      __$$UserLoginButtonImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserLoginButtonImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$UserLoginButtonImpl>
    implements _$$UserLoginButtonImplCopyWith<$Res> {
  __$$UserLoginButtonImplCopyWithImpl(
      _$UserLoginButtonImpl _value, $Res Function(_$UserLoginButtonImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserLoginButtonImpl implements UserLoginButton {
  const _$UserLoginButtonImpl();

  @override
  String toString() {
    return 'LoginEvent.userLoginButton()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserLoginButtonImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String value) userLoginEmailAddress,
    required TResult Function(String value) userLoginPassword,
    required TResult Function() userShowLoginPassword,
    required TResult Function() userLoginButton,
  }) {
    return userLoginButton();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String value)? userLoginEmailAddress,
    TResult? Function(String value)? userLoginPassword,
    TResult? Function()? userShowLoginPassword,
    TResult? Function()? userLoginButton,
  }) {
    return userLoginButton?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String value)? userLoginEmailAddress,
    TResult Function(String value)? userLoginPassword,
    TResult Function()? userShowLoginPassword,
    TResult Function()? userLoginButton,
    required TResult orElse(),
  }) {
    if (userLoginButton != null) {
      return userLoginButton();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(UserLoginEmailAddress value)
        userLoginEmailAddress,
    required TResult Function(UserLoginPassword value) userLoginPassword,
    required TResult Function(UserShowLoginPassword value)
        userShowLoginPassword,
    required TResult Function(UserLoginButton value) userLoginButton,
  }) {
    return userLoginButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(UserLoginEmailAddress value)? userLoginEmailAddress,
    TResult? Function(UserLoginPassword value)? userLoginPassword,
    TResult? Function(UserShowLoginPassword value)? userShowLoginPassword,
    TResult? Function(UserLoginButton value)? userLoginButton,
  }) {
    return userLoginButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(UserLoginEmailAddress value)? userLoginEmailAddress,
    TResult Function(UserLoginPassword value)? userLoginPassword,
    TResult Function(UserShowLoginPassword value)? userShowLoginPassword,
    TResult Function(UserLoginButton value)? userLoginButton,
    required TResult orElse(),
  }) {
    if (userLoginButton != null) {
      return userLoginButton(this);
    }
    return orElse();
  }
}

abstract class UserLoginButton implements LoginEvent {
  const factory UserLoginButton() = _$UserLoginButtonImpl;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String value) userLoginEmailAddress,
    required TResult Function(String value) userLoginPassword,
    required TResult Function(bool value) showUserPassword,
    required TResult Function(bool value) buttonLoginVaildation,
    required TResult Function() loading,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function(AuthResponse data) suceess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String value)? userLoginEmailAddress,
    TResult? Function(String value)? userLoginPassword,
    TResult? Function(bool value)? showUserPassword,
    TResult? Function(bool value)? buttonLoginVaildation,
    TResult? Function()? loading,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function(AuthResponse data)? suceess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String value)? userLoginEmailAddress,
    TResult Function(String value)? userLoginPassword,
    TResult Function(bool value)? showUserPassword,
    TResult Function(bool value)? buttonLoginVaildation,
    TResult Function()? loading,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function(AuthResponse data)? suceess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserLoginEmailAddressState value)
        userLoginEmailAddress,
    required TResult Function(UserLoginPasswordState value) userLoginPassword,
    required TResult Function(ShowUserPasswordState value) showUserPassword,
    required TResult Function(ButtonLoginVaildation value)
        buttonLoginVaildation,
    required TResult Function(LoginButtonLoadingData value) loading,
    required TResult Function(LoginButtonErrorData value) error,
    required TResult Function(LoginButtonSuccessData value) suceess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserLoginEmailAddressState value)? userLoginEmailAddress,
    TResult? Function(UserLoginPasswordState value)? userLoginPassword,
    TResult? Function(ShowUserPasswordState value)? showUserPassword,
    TResult? Function(ButtonLoginVaildation value)? buttonLoginVaildation,
    TResult? Function(LoginButtonLoadingData value)? loading,
    TResult? Function(LoginButtonErrorData value)? error,
    TResult? Function(LoginButtonSuccessData value)? suceess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserLoginEmailAddressState value)? userLoginEmailAddress,
    TResult Function(UserLoginPasswordState value)? userLoginPassword,
    TResult Function(ShowUserPasswordState value)? showUserPassword,
    TResult Function(ButtonLoginVaildation value)? buttonLoginVaildation,
    TResult Function(LoginButtonLoadingData value)? loading,
    TResult Function(LoginButtonErrorData value)? error,
    TResult Function(LoginButtonSuccessData value)? suceess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

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
    extends _$LoginStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'LoginState.initial()';
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
    required TResult Function(String value) userLoginEmailAddress,
    required TResult Function(String value) userLoginPassword,
    required TResult Function(bool value) showUserPassword,
    required TResult Function(bool value) buttonLoginVaildation,
    required TResult Function() loading,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function(AuthResponse data) suceess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String value)? userLoginEmailAddress,
    TResult? Function(String value)? userLoginPassword,
    TResult? Function(bool value)? showUserPassword,
    TResult? Function(bool value)? buttonLoginVaildation,
    TResult? Function()? loading,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function(AuthResponse data)? suceess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String value)? userLoginEmailAddress,
    TResult Function(String value)? userLoginPassword,
    TResult Function(bool value)? showUserPassword,
    TResult Function(bool value)? buttonLoginVaildation,
    TResult Function()? loading,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function(AuthResponse data)? suceess,
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
    required TResult Function(UserLoginEmailAddressState value)
        userLoginEmailAddress,
    required TResult Function(UserLoginPasswordState value) userLoginPassword,
    required TResult Function(ShowUserPasswordState value) showUserPassword,
    required TResult Function(ButtonLoginVaildation value)
        buttonLoginVaildation,
    required TResult Function(LoginButtonLoadingData value) loading,
    required TResult Function(LoginButtonErrorData value) error,
    required TResult Function(LoginButtonSuccessData value) suceess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserLoginEmailAddressState value)? userLoginEmailAddress,
    TResult? Function(UserLoginPasswordState value)? userLoginPassword,
    TResult? Function(ShowUserPasswordState value)? showUserPassword,
    TResult? Function(ButtonLoginVaildation value)? buttonLoginVaildation,
    TResult? Function(LoginButtonLoadingData value)? loading,
    TResult? Function(LoginButtonErrorData value)? error,
    TResult? Function(LoginButtonSuccessData value)? suceess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserLoginEmailAddressState value)? userLoginEmailAddress,
    TResult Function(UserLoginPasswordState value)? userLoginPassword,
    TResult Function(ShowUserPasswordState value)? showUserPassword,
    TResult Function(ButtonLoginVaildation value)? buttonLoginVaildation,
    TResult Function(LoginButtonLoadingData value)? loading,
    TResult Function(LoginButtonErrorData value)? error,
    TResult Function(LoginButtonSuccessData value)? suceess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$UserLoginEmailAddressStateImplCopyWith<$Res> {
  factory _$$UserLoginEmailAddressStateImplCopyWith(
          _$UserLoginEmailAddressStateImpl value,
          $Res Function(_$UserLoginEmailAddressStateImpl) then) =
      __$$UserLoginEmailAddressStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UserLoginEmailAddressStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$UserLoginEmailAddressStateImpl>
    implements _$$UserLoginEmailAddressStateImplCopyWith<$Res> {
  __$$UserLoginEmailAddressStateImplCopyWithImpl(
      _$UserLoginEmailAddressStateImpl _value,
      $Res Function(_$UserLoginEmailAddressStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UserLoginEmailAddressStateImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserLoginEmailAddressStateImpl implements UserLoginEmailAddressState {
  const _$UserLoginEmailAddressStateImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'LoginState.userLoginEmailAddress(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginEmailAddressStateImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginEmailAddressStateImplCopyWith<_$UserLoginEmailAddressStateImpl>
      get copyWith => __$$UserLoginEmailAddressStateImplCopyWithImpl<
          _$UserLoginEmailAddressStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String value) userLoginEmailAddress,
    required TResult Function(String value) userLoginPassword,
    required TResult Function(bool value) showUserPassword,
    required TResult Function(bool value) buttonLoginVaildation,
    required TResult Function() loading,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function(AuthResponse data) suceess,
  }) {
    return userLoginEmailAddress(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String value)? userLoginEmailAddress,
    TResult? Function(String value)? userLoginPassword,
    TResult? Function(bool value)? showUserPassword,
    TResult? Function(bool value)? buttonLoginVaildation,
    TResult? Function()? loading,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function(AuthResponse data)? suceess,
  }) {
    return userLoginEmailAddress?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String value)? userLoginEmailAddress,
    TResult Function(String value)? userLoginPassword,
    TResult Function(bool value)? showUserPassword,
    TResult Function(bool value)? buttonLoginVaildation,
    TResult Function()? loading,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function(AuthResponse data)? suceess,
    required TResult orElse(),
  }) {
    if (userLoginEmailAddress != null) {
      return userLoginEmailAddress(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserLoginEmailAddressState value)
        userLoginEmailAddress,
    required TResult Function(UserLoginPasswordState value) userLoginPassword,
    required TResult Function(ShowUserPasswordState value) showUserPassword,
    required TResult Function(ButtonLoginVaildation value)
        buttonLoginVaildation,
    required TResult Function(LoginButtonLoadingData value) loading,
    required TResult Function(LoginButtonErrorData value) error,
    required TResult Function(LoginButtonSuccessData value) suceess,
  }) {
    return userLoginEmailAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserLoginEmailAddressState value)? userLoginEmailAddress,
    TResult? Function(UserLoginPasswordState value)? userLoginPassword,
    TResult? Function(ShowUserPasswordState value)? showUserPassword,
    TResult? Function(ButtonLoginVaildation value)? buttonLoginVaildation,
    TResult? Function(LoginButtonLoadingData value)? loading,
    TResult? Function(LoginButtonErrorData value)? error,
    TResult? Function(LoginButtonSuccessData value)? suceess,
  }) {
    return userLoginEmailAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserLoginEmailAddressState value)? userLoginEmailAddress,
    TResult Function(UserLoginPasswordState value)? userLoginPassword,
    TResult Function(ShowUserPasswordState value)? showUserPassword,
    TResult Function(ButtonLoginVaildation value)? buttonLoginVaildation,
    TResult Function(LoginButtonLoadingData value)? loading,
    TResult Function(LoginButtonErrorData value)? error,
    TResult Function(LoginButtonSuccessData value)? suceess,
    required TResult orElse(),
  }) {
    if (userLoginEmailAddress != null) {
      return userLoginEmailAddress(this);
    }
    return orElse();
  }
}

abstract class UserLoginEmailAddressState implements LoginState {
  const factory UserLoginEmailAddressState(final String value) =
      _$UserLoginEmailAddressStateImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$UserLoginEmailAddressStateImplCopyWith<_$UserLoginEmailAddressStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserLoginPasswordStateImplCopyWith<$Res> {
  factory _$$UserLoginPasswordStateImplCopyWith(
          _$UserLoginPasswordStateImpl value,
          $Res Function(_$UserLoginPasswordStateImpl) then) =
      __$$UserLoginPasswordStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UserLoginPasswordStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$UserLoginPasswordStateImpl>
    implements _$$UserLoginPasswordStateImplCopyWith<$Res> {
  __$$UserLoginPasswordStateImplCopyWithImpl(
      _$UserLoginPasswordStateImpl _value,
      $Res Function(_$UserLoginPasswordStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UserLoginPasswordStateImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserLoginPasswordStateImpl implements UserLoginPasswordState {
  const _$UserLoginPasswordStateImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'LoginState.userLoginPassword(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginPasswordStateImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginPasswordStateImplCopyWith<_$UserLoginPasswordStateImpl>
      get copyWith => __$$UserLoginPasswordStateImplCopyWithImpl<
          _$UserLoginPasswordStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String value) userLoginEmailAddress,
    required TResult Function(String value) userLoginPassword,
    required TResult Function(bool value) showUserPassword,
    required TResult Function(bool value) buttonLoginVaildation,
    required TResult Function() loading,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function(AuthResponse data) suceess,
  }) {
    return userLoginPassword(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String value)? userLoginEmailAddress,
    TResult? Function(String value)? userLoginPassword,
    TResult? Function(bool value)? showUserPassword,
    TResult? Function(bool value)? buttonLoginVaildation,
    TResult? Function()? loading,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function(AuthResponse data)? suceess,
  }) {
    return userLoginPassword?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String value)? userLoginEmailAddress,
    TResult Function(String value)? userLoginPassword,
    TResult Function(bool value)? showUserPassword,
    TResult Function(bool value)? buttonLoginVaildation,
    TResult Function()? loading,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function(AuthResponse data)? suceess,
    required TResult orElse(),
  }) {
    if (userLoginPassword != null) {
      return userLoginPassword(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserLoginEmailAddressState value)
        userLoginEmailAddress,
    required TResult Function(UserLoginPasswordState value) userLoginPassword,
    required TResult Function(ShowUserPasswordState value) showUserPassword,
    required TResult Function(ButtonLoginVaildation value)
        buttonLoginVaildation,
    required TResult Function(LoginButtonLoadingData value) loading,
    required TResult Function(LoginButtonErrorData value) error,
    required TResult Function(LoginButtonSuccessData value) suceess,
  }) {
    return userLoginPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserLoginEmailAddressState value)? userLoginEmailAddress,
    TResult? Function(UserLoginPasswordState value)? userLoginPassword,
    TResult? Function(ShowUserPasswordState value)? showUserPassword,
    TResult? Function(ButtonLoginVaildation value)? buttonLoginVaildation,
    TResult? Function(LoginButtonLoadingData value)? loading,
    TResult? Function(LoginButtonErrorData value)? error,
    TResult? Function(LoginButtonSuccessData value)? suceess,
  }) {
    return userLoginPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserLoginEmailAddressState value)? userLoginEmailAddress,
    TResult Function(UserLoginPasswordState value)? userLoginPassword,
    TResult Function(ShowUserPasswordState value)? showUserPassword,
    TResult Function(ButtonLoginVaildation value)? buttonLoginVaildation,
    TResult Function(LoginButtonLoadingData value)? loading,
    TResult Function(LoginButtonErrorData value)? error,
    TResult Function(LoginButtonSuccessData value)? suceess,
    required TResult orElse(),
  }) {
    if (userLoginPassword != null) {
      return userLoginPassword(this);
    }
    return orElse();
  }
}

abstract class UserLoginPasswordState implements LoginState {
  const factory UserLoginPasswordState(final String value) =
      _$UserLoginPasswordStateImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$UserLoginPasswordStateImplCopyWith<_$UserLoginPasswordStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowUserPasswordStateImplCopyWith<$Res> {
  factory _$$ShowUserPasswordStateImplCopyWith(
          _$ShowUserPasswordStateImpl value,
          $Res Function(_$ShowUserPasswordStateImpl) then) =
      __$$ShowUserPasswordStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$ShowUserPasswordStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ShowUserPasswordStateImpl>
    implements _$$ShowUserPasswordStateImplCopyWith<$Res> {
  __$$ShowUserPasswordStateImplCopyWithImpl(_$ShowUserPasswordStateImpl _value,
      $Res Function(_$ShowUserPasswordStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ShowUserPasswordStateImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShowUserPasswordStateImpl implements ShowUserPasswordState {
  const _$ShowUserPasswordStateImpl(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'LoginState.showUserPassword(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowUserPasswordStateImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowUserPasswordStateImplCopyWith<_$ShowUserPasswordStateImpl>
      get copyWith => __$$ShowUserPasswordStateImplCopyWithImpl<
          _$ShowUserPasswordStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String value) userLoginEmailAddress,
    required TResult Function(String value) userLoginPassword,
    required TResult Function(bool value) showUserPassword,
    required TResult Function(bool value) buttonLoginVaildation,
    required TResult Function() loading,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function(AuthResponse data) suceess,
  }) {
    return showUserPassword(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String value)? userLoginEmailAddress,
    TResult? Function(String value)? userLoginPassword,
    TResult? Function(bool value)? showUserPassword,
    TResult? Function(bool value)? buttonLoginVaildation,
    TResult? Function()? loading,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function(AuthResponse data)? suceess,
  }) {
    return showUserPassword?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String value)? userLoginEmailAddress,
    TResult Function(String value)? userLoginPassword,
    TResult Function(bool value)? showUserPassword,
    TResult Function(bool value)? buttonLoginVaildation,
    TResult Function()? loading,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function(AuthResponse data)? suceess,
    required TResult orElse(),
  }) {
    if (showUserPassword != null) {
      return showUserPassword(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserLoginEmailAddressState value)
        userLoginEmailAddress,
    required TResult Function(UserLoginPasswordState value) userLoginPassword,
    required TResult Function(ShowUserPasswordState value) showUserPassword,
    required TResult Function(ButtonLoginVaildation value)
        buttonLoginVaildation,
    required TResult Function(LoginButtonLoadingData value) loading,
    required TResult Function(LoginButtonErrorData value) error,
    required TResult Function(LoginButtonSuccessData value) suceess,
  }) {
    return showUserPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserLoginEmailAddressState value)? userLoginEmailAddress,
    TResult? Function(UserLoginPasswordState value)? userLoginPassword,
    TResult? Function(ShowUserPasswordState value)? showUserPassword,
    TResult? Function(ButtonLoginVaildation value)? buttonLoginVaildation,
    TResult? Function(LoginButtonLoadingData value)? loading,
    TResult? Function(LoginButtonErrorData value)? error,
    TResult? Function(LoginButtonSuccessData value)? suceess,
  }) {
    return showUserPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserLoginEmailAddressState value)? userLoginEmailAddress,
    TResult Function(UserLoginPasswordState value)? userLoginPassword,
    TResult Function(ShowUserPasswordState value)? showUserPassword,
    TResult Function(ButtonLoginVaildation value)? buttonLoginVaildation,
    TResult Function(LoginButtonLoadingData value)? loading,
    TResult Function(LoginButtonErrorData value)? error,
    TResult Function(LoginButtonSuccessData value)? suceess,
    required TResult orElse(),
  }) {
    if (showUserPassword != null) {
      return showUserPassword(this);
    }
    return orElse();
  }
}

abstract class ShowUserPasswordState implements LoginState {
  const factory ShowUserPasswordState(final bool value) =
      _$ShowUserPasswordStateImpl;

  bool get value;
  @JsonKey(ignore: true)
  _$$ShowUserPasswordStateImplCopyWith<_$ShowUserPasswordStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ButtonLoginVaildationImplCopyWith<$Res> {
  factory _$$ButtonLoginVaildationImplCopyWith(
          _$ButtonLoginVaildationImpl value,
          $Res Function(_$ButtonLoginVaildationImpl) then) =
      __$$ButtonLoginVaildationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$ButtonLoginVaildationImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ButtonLoginVaildationImpl>
    implements _$$ButtonLoginVaildationImplCopyWith<$Res> {
  __$$ButtonLoginVaildationImplCopyWithImpl(_$ButtonLoginVaildationImpl _value,
      $Res Function(_$ButtonLoginVaildationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ButtonLoginVaildationImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ButtonLoginVaildationImpl implements ButtonLoginVaildation {
  const _$ButtonLoginVaildationImpl(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'LoginState.buttonLoginVaildation(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ButtonLoginVaildationImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ButtonLoginVaildationImplCopyWith<_$ButtonLoginVaildationImpl>
      get copyWith => __$$ButtonLoginVaildationImplCopyWithImpl<
          _$ButtonLoginVaildationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String value) userLoginEmailAddress,
    required TResult Function(String value) userLoginPassword,
    required TResult Function(bool value) showUserPassword,
    required TResult Function(bool value) buttonLoginVaildation,
    required TResult Function() loading,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function(AuthResponse data) suceess,
  }) {
    return buttonLoginVaildation(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String value)? userLoginEmailAddress,
    TResult? Function(String value)? userLoginPassword,
    TResult? Function(bool value)? showUserPassword,
    TResult? Function(bool value)? buttonLoginVaildation,
    TResult? Function()? loading,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function(AuthResponse data)? suceess,
  }) {
    return buttonLoginVaildation?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String value)? userLoginEmailAddress,
    TResult Function(String value)? userLoginPassword,
    TResult Function(bool value)? showUserPassword,
    TResult Function(bool value)? buttonLoginVaildation,
    TResult Function()? loading,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function(AuthResponse data)? suceess,
    required TResult orElse(),
  }) {
    if (buttonLoginVaildation != null) {
      return buttonLoginVaildation(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserLoginEmailAddressState value)
        userLoginEmailAddress,
    required TResult Function(UserLoginPasswordState value) userLoginPassword,
    required TResult Function(ShowUserPasswordState value) showUserPassword,
    required TResult Function(ButtonLoginVaildation value)
        buttonLoginVaildation,
    required TResult Function(LoginButtonLoadingData value) loading,
    required TResult Function(LoginButtonErrorData value) error,
    required TResult Function(LoginButtonSuccessData value) suceess,
  }) {
    return buttonLoginVaildation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserLoginEmailAddressState value)? userLoginEmailAddress,
    TResult? Function(UserLoginPasswordState value)? userLoginPassword,
    TResult? Function(ShowUserPasswordState value)? showUserPassword,
    TResult? Function(ButtonLoginVaildation value)? buttonLoginVaildation,
    TResult? Function(LoginButtonLoadingData value)? loading,
    TResult? Function(LoginButtonErrorData value)? error,
    TResult? Function(LoginButtonSuccessData value)? suceess,
  }) {
    return buttonLoginVaildation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserLoginEmailAddressState value)? userLoginEmailAddress,
    TResult Function(UserLoginPasswordState value)? userLoginPassword,
    TResult Function(ShowUserPasswordState value)? showUserPassword,
    TResult Function(ButtonLoginVaildation value)? buttonLoginVaildation,
    TResult Function(LoginButtonLoadingData value)? loading,
    TResult Function(LoginButtonErrorData value)? error,
    TResult Function(LoginButtonSuccessData value)? suceess,
    required TResult orElse(),
  }) {
    if (buttonLoginVaildation != null) {
      return buttonLoginVaildation(this);
    }
    return orElse();
  }
}

abstract class ButtonLoginVaildation implements LoginState {
  const factory ButtonLoginVaildation(final bool value) =
      _$ButtonLoginVaildationImpl;

  bool get value;
  @JsonKey(ignore: true)
  _$$ButtonLoginVaildationImplCopyWith<_$ButtonLoginVaildationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginButtonLoadingDataImplCopyWith<$Res> {
  factory _$$LoginButtonLoadingDataImplCopyWith(
          _$LoginButtonLoadingDataImpl value,
          $Res Function(_$LoginButtonLoadingDataImpl) then) =
      __$$LoginButtonLoadingDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginButtonLoadingDataImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginButtonLoadingDataImpl>
    implements _$$LoginButtonLoadingDataImplCopyWith<$Res> {
  __$$LoginButtonLoadingDataImplCopyWithImpl(
      _$LoginButtonLoadingDataImpl _value,
      $Res Function(_$LoginButtonLoadingDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginButtonLoadingDataImpl implements LoginButtonLoadingData {
  const _$LoginButtonLoadingDataImpl();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginButtonLoadingDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String value) userLoginEmailAddress,
    required TResult Function(String value) userLoginPassword,
    required TResult Function(bool value) showUserPassword,
    required TResult Function(bool value) buttonLoginVaildation,
    required TResult Function() loading,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function(AuthResponse data) suceess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String value)? userLoginEmailAddress,
    TResult? Function(String value)? userLoginPassword,
    TResult? Function(bool value)? showUserPassword,
    TResult? Function(bool value)? buttonLoginVaildation,
    TResult? Function()? loading,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function(AuthResponse data)? suceess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String value)? userLoginEmailAddress,
    TResult Function(String value)? userLoginPassword,
    TResult Function(bool value)? showUserPassword,
    TResult Function(bool value)? buttonLoginVaildation,
    TResult Function()? loading,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function(AuthResponse data)? suceess,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(UserLoginEmailAddressState value)
        userLoginEmailAddress,
    required TResult Function(UserLoginPasswordState value) userLoginPassword,
    required TResult Function(ShowUserPasswordState value) showUserPassword,
    required TResult Function(ButtonLoginVaildation value)
        buttonLoginVaildation,
    required TResult Function(LoginButtonLoadingData value) loading,
    required TResult Function(LoginButtonErrorData value) error,
    required TResult Function(LoginButtonSuccessData value) suceess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserLoginEmailAddressState value)? userLoginEmailAddress,
    TResult? Function(UserLoginPasswordState value)? userLoginPassword,
    TResult? Function(ShowUserPasswordState value)? showUserPassword,
    TResult? Function(ButtonLoginVaildation value)? buttonLoginVaildation,
    TResult? Function(LoginButtonLoadingData value)? loading,
    TResult? Function(LoginButtonErrorData value)? error,
    TResult? Function(LoginButtonSuccessData value)? suceess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserLoginEmailAddressState value)? userLoginEmailAddress,
    TResult Function(UserLoginPasswordState value)? userLoginPassword,
    TResult Function(ShowUserPasswordState value)? showUserPassword,
    TResult Function(ButtonLoginVaildation value)? buttonLoginVaildation,
    TResult Function(LoginButtonLoadingData value)? loading,
    TResult Function(LoginButtonErrorData value)? error,
    TResult Function(LoginButtonSuccessData value)? suceess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoginButtonLoadingData implements LoginState {
  const factory LoginButtonLoadingData() = _$LoginButtonLoadingDataImpl;
}

/// @nodoc
abstract class _$$LoginButtonErrorDataImplCopyWith<$Res> {
  factory _$$LoginButtonErrorDataImplCopyWith(_$LoginButtonErrorDataImpl value,
          $Res Function(_$LoginButtonErrorDataImpl) then) =
      __$$LoginButtonErrorDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$LoginButtonErrorDataImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginButtonErrorDataImpl>
    implements _$$LoginButtonErrorDataImplCopyWith<$Res> {
  __$$LoginButtonErrorDataImplCopyWithImpl(_$LoginButtonErrorDataImpl _value,
      $Res Function(_$LoginButtonErrorDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$LoginButtonErrorDataImpl(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$LoginButtonErrorDataImpl implements LoginButtonErrorData {
  const _$LoginButtonErrorDataImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'LoginState.error(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginButtonErrorDataImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginButtonErrorDataImplCopyWith<_$LoginButtonErrorDataImpl>
      get copyWith =>
          __$$LoginButtonErrorDataImplCopyWithImpl<_$LoginButtonErrorDataImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String value) userLoginEmailAddress,
    required TResult Function(String value) userLoginPassword,
    required TResult Function(bool value) showUserPassword,
    required TResult Function(bool value) buttonLoginVaildation,
    required TResult Function() loading,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function(AuthResponse data) suceess,
  }) {
    return error(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String value)? userLoginEmailAddress,
    TResult? Function(String value)? userLoginPassword,
    TResult? Function(bool value)? showUserPassword,
    TResult? Function(bool value)? buttonLoginVaildation,
    TResult? Function()? loading,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function(AuthResponse data)? suceess,
  }) {
    return error?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String value)? userLoginEmailAddress,
    TResult Function(String value)? userLoginPassword,
    TResult Function(bool value)? showUserPassword,
    TResult Function(bool value)? buttonLoginVaildation,
    TResult Function()? loading,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function(AuthResponse data)? suceess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserLoginEmailAddressState value)
        userLoginEmailAddress,
    required TResult Function(UserLoginPasswordState value) userLoginPassword,
    required TResult Function(ShowUserPasswordState value) showUserPassword,
    required TResult Function(ButtonLoginVaildation value)
        buttonLoginVaildation,
    required TResult Function(LoginButtonLoadingData value) loading,
    required TResult Function(LoginButtonErrorData value) error,
    required TResult Function(LoginButtonSuccessData value) suceess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserLoginEmailAddressState value)? userLoginEmailAddress,
    TResult? Function(UserLoginPasswordState value)? userLoginPassword,
    TResult? Function(ShowUserPasswordState value)? showUserPassword,
    TResult? Function(ButtonLoginVaildation value)? buttonLoginVaildation,
    TResult? Function(LoginButtonLoadingData value)? loading,
    TResult? Function(LoginButtonErrorData value)? error,
    TResult? Function(LoginButtonSuccessData value)? suceess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserLoginEmailAddressState value)? userLoginEmailAddress,
    TResult Function(UserLoginPasswordState value)? userLoginPassword,
    TResult Function(ShowUserPasswordState value)? showUserPassword,
    TResult Function(ButtonLoginVaildation value)? buttonLoginVaildation,
    TResult Function(LoginButtonLoadingData value)? loading,
    TResult Function(LoginButtonErrorData value)? error,
    TResult Function(LoginButtonSuccessData value)? suceess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginButtonErrorData implements LoginState {
  const factory LoginButtonErrorData(final ApiErrorModel apiErrorModel) =
      _$LoginButtonErrorDataImpl;

  ApiErrorModel get apiErrorModel;
  @JsonKey(ignore: true)
  _$$LoginButtonErrorDataImplCopyWith<_$LoginButtonErrorDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginButtonSuccessDataImplCopyWith<$Res> {
  factory _$$LoginButtonSuccessDataImplCopyWith(
          _$LoginButtonSuccessDataImpl value,
          $Res Function(_$LoginButtonSuccessDataImpl) then) =
      __$$LoginButtonSuccessDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthResponse data});
}

/// @nodoc
class __$$LoginButtonSuccessDataImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginButtonSuccessDataImpl>
    implements _$$LoginButtonSuccessDataImplCopyWith<$Res> {
  __$$LoginButtonSuccessDataImplCopyWithImpl(
      _$LoginButtonSuccessDataImpl _value,
      $Res Function(_$LoginButtonSuccessDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoginButtonSuccessDataImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AuthResponse,
    ));
  }
}

/// @nodoc

class _$LoginButtonSuccessDataImpl implements LoginButtonSuccessData {
  const _$LoginButtonSuccessDataImpl(this.data);

  @override
  final AuthResponse data;

  @override
  String toString() {
    return 'LoginState.suceess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginButtonSuccessDataImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginButtonSuccessDataImplCopyWith<_$LoginButtonSuccessDataImpl>
      get copyWith => __$$LoginButtonSuccessDataImplCopyWithImpl<
          _$LoginButtonSuccessDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String value) userLoginEmailAddress,
    required TResult Function(String value) userLoginPassword,
    required TResult Function(bool value) showUserPassword,
    required TResult Function(bool value) buttonLoginVaildation,
    required TResult Function() loading,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function(AuthResponse data) suceess,
  }) {
    return suceess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String value)? userLoginEmailAddress,
    TResult? Function(String value)? userLoginPassword,
    TResult? Function(bool value)? showUserPassword,
    TResult? Function(bool value)? buttonLoginVaildation,
    TResult? Function()? loading,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function(AuthResponse data)? suceess,
  }) {
    return suceess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String value)? userLoginEmailAddress,
    TResult Function(String value)? userLoginPassword,
    TResult Function(bool value)? showUserPassword,
    TResult Function(bool value)? buttonLoginVaildation,
    TResult Function()? loading,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function(AuthResponse data)? suceess,
    required TResult orElse(),
  }) {
    if (suceess != null) {
      return suceess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserLoginEmailAddressState value)
        userLoginEmailAddress,
    required TResult Function(UserLoginPasswordState value) userLoginPassword,
    required TResult Function(ShowUserPasswordState value) showUserPassword,
    required TResult Function(ButtonLoginVaildation value)
        buttonLoginVaildation,
    required TResult Function(LoginButtonLoadingData value) loading,
    required TResult Function(LoginButtonErrorData value) error,
    required TResult Function(LoginButtonSuccessData value) suceess,
  }) {
    return suceess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserLoginEmailAddressState value)? userLoginEmailAddress,
    TResult? Function(UserLoginPasswordState value)? userLoginPassword,
    TResult? Function(ShowUserPasswordState value)? showUserPassword,
    TResult? Function(ButtonLoginVaildation value)? buttonLoginVaildation,
    TResult? Function(LoginButtonLoadingData value)? loading,
    TResult? Function(LoginButtonErrorData value)? error,
    TResult? Function(LoginButtonSuccessData value)? suceess,
  }) {
    return suceess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserLoginEmailAddressState value)? userLoginEmailAddress,
    TResult Function(UserLoginPasswordState value)? userLoginPassword,
    TResult Function(ShowUserPasswordState value)? showUserPassword,
    TResult Function(ButtonLoginVaildation value)? buttonLoginVaildation,
    TResult Function(LoginButtonLoadingData value)? loading,
    TResult Function(LoginButtonErrorData value)? error,
    TResult Function(LoginButtonSuccessData value)? suceess,
    required TResult orElse(),
  }) {
    if (suceess != null) {
      return suceess(this);
    }
    return orElse();
  }
}

abstract class LoginButtonSuccessData implements LoginState {
  const factory LoginButtonSuccessData(final AuthResponse data) =
      _$LoginButtonSuccessDataImpl;

  AuthResponse get data;
  @JsonKey(ignore: true)
  _$$LoginButtonSuccessDataImplCopyWith<_$LoginButtonSuccessDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
