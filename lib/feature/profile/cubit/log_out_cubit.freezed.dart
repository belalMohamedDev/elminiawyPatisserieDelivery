// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_out_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LogOutState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() logOutLoading,
    required TResult Function(ApiErrorModel apiErrorModel) logOutError,
    required TResult Function(String successMessage) logOutSuccess,
    required TResult Function(String userName) getStorageData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? logOutLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? logOutError,
    TResult? Function(String successMessage)? logOutSuccess,
    TResult? Function(String userName)? getStorageData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? logOutLoading,
    TResult Function(ApiErrorModel apiErrorModel)? logOutError,
    TResult Function(String successMessage)? logOutSuccess,
    TResult Function(String userName)? getStorageData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LogOutLoading value) logOutLoading,
    required TResult Function(LogOutError value) logOutError,
    required TResult Function(LogOutSuccess value) logOutSuccess,
    required TResult Function(GetStorageData value) getStorageData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LogOutLoading value)? logOutLoading,
    TResult? Function(LogOutError value)? logOutError,
    TResult? Function(LogOutSuccess value)? logOutSuccess,
    TResult? Function(GetStorageData value)? getStorageData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LogOutLoading value)? logOutLoading,
    TResult Function(LogOutError value)? logOutError,
    TResult Function(LogOutSuccess value)? logOutSuccess,
    TResult Function(GetStorageData value)? getStorageData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogOutStateCopyWith<$Res> {
  factory $LogOutStateCopyWith(
          LogOutState value, $Res Function(LogOutState) then) =
      _$LogOutStateCopyWithImpl<$Res, LogOutState>;
}

/// @nodoc
class _$LogOutStateCopyWithImpl<$Res, $Val extends LogOutState>
    implements $LogOutStateCopyWith<$Res> {
  _$LogOutStateCopyWithImpl(this._value, this._then);

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
    extends _$LogOutStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'LogOutState.initial()';
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
    required TResult Function() logOutLoading,
    required TResult Function(ApiErrorModel apiErrorModel) logOutError,
    required TResult Function(String successMessage) logOutSuccess,
    required TResult Function(String userName) getStorageData,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? logOutLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? logOutError,
    TResult? Function(String successMessage)? logOutSuccess,
    TResult? Function(String userName)? getStorageData,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? logOutLoading,
    TResult Function(ApiErrorModel apiErrorModel)? logOutError,
    TResult Function(String successMessage)? logOutSuccess,
    TResult Function(String userName)? getStorageData,
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
    required TResult Function(LogOutLoading value) logOutLoading,
    required TResult Function(LogOutError value) logOutError,
    required TResult Function(LogOutSuccess value) logOutSuccess,
    required TResult Function(GetStorageData value) getStorageData,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LogOutLoading value)? logOutLoading,
    TResult? Function(LogOutError value)? logOutError,
    TResult? Function(LogOutSuccess value)? logOutSuccess,
    TResult? Function(GetStorageData value)? getStorageData,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LogOutLoading value)? logOutLoading,
    TResult Function(LogOutError value)? logOutError,
    TResult Function(LogOutSuccess value)? logOutSuccess,
    TResult Function(GetStorageData value)? getStorageData,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LogOutState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LogOutLoadingImplCopyWith<$Res> {
  factory _$$LogOutLoadingImplCopyWith(
          _$LogOutLoadingImpl value, $Res Function(_$LogOutLoadingImpl) then) =
      __$$LogOutLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutLoadingImplCopyWithImpl<$Res>
    extends _$LogOutStateCopyWithImpl<$Res, _$LogOutLoadingImpl>
    implements _$$LogOutLoadingImplCopyWith<$Res> {
  __$$LogOutLoadingImplCopyWithImpl(
      _$LogOutLoadingImpl _value, $Res Function(_$LogOutLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutLoadingImpl implements LogOutLoading {
  const _$LogOutLoadingImpl();

  @override
  String toString() {
    return 'LogOutState.logOutLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() logOutLoading,
    required TResult Function(ApiErrorModel apiErrorModel) logOutError,
    required TResult Function(String successMessage) logOutSuccess,
    required TResult Function(String userName) getStorageData,
  }) {
    return logOutLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? logOutLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? logOutError,
    TResult? Function(String successMessage)? logOutSuccess,
    TResult? Function(String userName)? getStorageData,
  }) {
    return logOutLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? logOutLoading,
    TResult Function(ApiErrorModel apiErrorModel)? logOutError,
    TResult Function(String successMessage)? logOutSuccess,
    TResult Function(String userName)? getStorageData,
    required TResult orElse(),
  }) {
    if (logOutLoading != null) {
      return logOutLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LogOutLoading value) logOutLoading,
    required TResult Function(LogOutError value) logOutError,
    required TResult Function(LogOutSuccess value) logOutSuccess,
    required TResult Function(GetStorageData value) getStorageData,
  }) {
    return logOutLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LogOutLoading value)? logOutLoading,
    TResult? Function(LogOutError value)? logOutError,
    TResult? Function(LogOutSuccess value)? logOutSuccess,
    TResult? Function(GetStorageData value)? getStorageData,
  }) {
    return logOutLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LogOutLoading value)? logOutLoading,
    TResult Function(LogOutError value)? logOutError,
    TResult Function(LogOutSuccess value)? logOutSuccess,
    TResult Function(GetStorageData value)? getStorageData,
    required TResult orElse(),
  }) {
    if (logOutLoading != null) {
      return logOutLoading(this);
    }
    return orElse();
  }
}

abstract class LogOutLoading implements LogOutState {
  const factory LogOutLoading() = _$LogOutLoadingImpl;
}

/// @nodoc
abstract class _$$LogOutErrorImplCopyWith<$Res> {
  factory _$$LogOutErrorImplCopyWith(
          _$LogOutErrorImpl value, $Res Function(_$LogOutErrorImpl) then) =
      __$$LogOutErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$LogOutErrorImplCopyWithImpl<$Res>
    extends _$LogOutStateCopyWithImpl<$Res, _$LogOutErrorImpl>
    implements _$$LogOutErrorImplCopyWith<$Res> {
  __$$LogOutErrorImplCopyWithImpl(
      _$LogOutErrorImpl _value, $Res Function(_$LogOutErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$LogOutErrorImpl(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$LogOutErrorImpl implements LogOutError {
  const _$LogOutErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'LogOutState.logOutError(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogOutErrorImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogOutErrorImplCopyWith<_$LogOutErrorImpl> get copyWith =>
      __$$LogOutErrorImplCopyWithImpl<_$LogOutErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() logOutLoading,
    required TResult Function(ApiErrorModel apiErrorModel) logOutError,
    required TResult Function(String successMessage) logOutSuccess,
    required TResult Function(String userName) getStorageData,
  }) {
    return logOutError(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? logOutLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? logOutError,
    TResult? Function(String successMessage)? logOutSuccess,
    TResult? Function(String userName)? getStorageData,
  }) {
    return logOutError?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? logOutLoading,
    TResult Function(ApiErrorModel apiErrorModel)? logOutError,
    TResult Function(String successMessage)? logOutSuccess,
    TResult Function(String userName)? getStorageData,
    required TResult orElse(),
  }) {
    if (logOutError != null) {
      return logOutError(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LogOutLoading value) logOutLoading,
    required TResult Function(LogOutError value) logOutError,
    required TResult Function(LogOutSuccess value) logOutSuccess,
    required TResult Function(GetStorageData value) getStorageData,
  }) {
    return logOutError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LogOutLoading value)? logOutLoading,
    TResult? Function(LogOutError value)? logOutError,
    TResult? Function(LogOutSuccess value)? logOutSuccess,
    TResult? Function(GetStorageData value)? getStorageData,
  }) {
    return logOutError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LogOutLoading value)? logOutLoading,
    TResult Function(LogOutError value)? logOutError,
    TResult Function(LogOutSuccess value)? logOutSuccess,
    TResult Function(GetStorageData value)? getStorageData,
    required TResult orElse(),
  }) {
    if (logOutError != null) {
      return logOutError(this);
    }
    return orElse();
  }
}

abstract class LogOutError implements LogOutState {
  const factory LogOutError(final ApiErrorModel apiErrorModel) =
      _$LogOutErrorImpl;

  ApiErrorModel get apiErrorModel;
  @JsonKey(ignore: true)
  _$$LogOutErrorImplCopyWith<_$LogOutErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutSuccessImplCopyWith<$Res> {
  factory _$$LogOutSuccessImplCopyWith(
          _$LogOutSuccessImpl value, $Res Function(_$LogOutSuccessImpl) then) =
      __$$LogOutSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String successMessage});
}

/// @nodoc
class __$$LogOutSuccessImplCopyWithImpl<$Res>
    extends _$LogOutStateCopyWithImpl<$Res, _$LogOutSuccessImpl>
    implements _$$LogOutSuccessImplCopyWith<$Res> {
  __$$LogOutSuccessImplCopyWithImpl(
      _$LogOutSuccessImpl _value, $Res Function(_$LogOutSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successMessage = null,
  }) {
    return _then(_$LogOutSuccessImpl(
      successMessage: null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LogOutSuccessImpl implements LogOutSuccess {
  const _$LogOutSuccessImpl({required this.successMessage});

  @override
  final String successMessage;

  @override
  String toString() {
    return 'LogOutState.logOutSuccess(successMessage: $successMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogOutSuccessImpl &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogOutSuccessImplCopyWith<_$LogOutSuccessImpl> get copyWith =>
      __$$LogOutSuccessImplCopyWithImpl<_$LogOutSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() logOutLoading,
    required TResult Function(ApiErrorModel apiErrorModel) logOutError,
    required TResult Function(String successMessage) logOutSuccess,
    required TResult Function(String userName) getStorageData,
  }) {
    return logOutSuccess(successMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? logOutLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? logOutError,
    TResult? Function(String successMessage)? logOutSuccess,
    TResult? Function(String userName)? getStorageData,
  }) {
    return logOutSuccess?.call(successMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? logOutLoading,
    TResult Function(ApiErrorModel apiErrorModel)? logOutError,
    TResult Function(String successMessage)? logOutSuccess,
    TResult Function(String userName)? getStorageData,
    required TResult orElse(),
  }) {
    if (logOutSuccess != null) {
      return logOutSuccess(successMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LogOutLoading value) logOutLoading,
    required TResult Function(LogOutError value) logOutError,
    required TResult Function(LogOutSuccess value) logOutSuccess,
    required TResult Function(GetStorageData value) getStorageData,
  }) {
    return logOutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LogOutLoading value)? logOutLoading,
    TResult? Function(LogOutError value)? logOutError,
    TResult? Function(LogOutSuccess value)? logOutSuccess,
    TResult? Function(GetStorageData value)? getStorageData,
  }) {
    return logOutSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LogOutLoading value)? logOutLoading,
    TResult Function(LogOutError value)? logOutError,
    TResult Function(LogOutSuccess value)? logOutSuccess,
    TResult Function(GetStorageData value)? getStorageData,
    required TResult orElse(),
  }) {
    if (logOutSuccess != null) {
      return logOutSuccess(this);
    }
    return orElse();
  }
}

abstract class LogOutSuccess implements LogOutState {
  const factory LogOutSuccess({required final String successMessage}) =
      _$LogOutSuccessImpl;

  String get successMessage;
  @JsonKey(ignore: true)
  _$$LogOutSuccessImplCopyWith<_$LogOutSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetStorageDataImplCopyWith<$Res> {
  factory _$$GetStorageDataImplCopyWith(_$GetStorageDataImpl value,
          $Res Function(_$GetStorageDataImpl) then) =
      __$$GetStorageDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userName});
}

/// @nodoc
class __$$GetStorageDataImplCopyWithImpl<$Res>
    extends _$LogOutStateCopyWithImpl<$Res, _$GetStorageDataImpl>
    implements _$$GetStorageDataImplCopyWith<$Res> {
  __$$GetStorageDataImplCopyWithImpl(
      _$GetStorageDataImpl _value, $Res Function(_$GetStorageDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
  }) {
    return _then(_$GetStorageDataImpl(
      null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetStorageDataImpl implements GetStorageData {
  const _$GetStorageDataImpl(this.userName);

  @override
  final String userName;

  @override
  String toString() {
    return 'LogOutState.getStorageData(userName: $userName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStorageDataImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStorageDataImplCopyWith<_$GetStorageDataImpl> get copyWith =>
      __$$GetStorageDataImplCopyWithImpl<_$GetStorageDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() logOutLoading,
    required TResult Function(ApiErrorModel apiErrorModel) logOutError,
    required TResult Function(String successMessage) logOutSuccess,
    required TResult Function(String userName) getStorageData,
  }) {
    return getStorageData(userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? logOutLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? logOutError,
    TResult? Function(String successMessage)? logOutSuccess,
    TResult? Function(String userName)? getStorageData,
  }) {
    return getStorageData?.call(userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? logOutLoading,
    TResult Function(ApiErrorModel apiErrorModel)? logOutError,
    TResult Function(String successMessage)? logOutSuccess,
    TResult Function(String userName)? getStorageData,
    required TResult orElse(),
  }) {
    if (getStorageData != null) {
      return getStorageData(userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LogOutLoading value) logOutLoading,
    required TResult Function(LogOutError value) logOutError,
    required TResult Function(LogOutSuccess value) logOutSuccess,
    required TResult Function(GetStorageData value) getStorageData,
  }) {
    return getStorageData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LogOutLoading value)? logOutLoading,
    TResult? Function(LogOutError value)? logOutError,
    TResult? Function(LogOutSuccess value)? logOutSuccess,
    TResult? Function(GetStorageData value)? getStorageData,
  }) {
    return getStorageData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LogOutLoading value)? logOutLoading,
    TResult Function(LogOutError value)? logOutError,
    TResult Function(LogOutSuccess value)? logOutSuccess,
    TResult Function(GetStorageData value)? getStorageData,
    required TResult orElse(),
  }) {
    if (getStorageData != null) {
      return getStorageData(this);
    }
    return orElse();
  }
}

abstract class GetStorageData implements LogOutState {
  const factory GetStorageData(final String userName) = _$GetStorageDataImpl;

  String get userName;
  @JsonKey(ignore: true)
  _$$GetStorageDataImplCopyWith<_$GetStorageDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
