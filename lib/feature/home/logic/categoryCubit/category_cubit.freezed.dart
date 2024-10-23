// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getCategoriesLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getCategoriesError,
    required TResult Function(CategoryResponse data) getCategoriesSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCategoriesLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getCategoriesError,
    TResult? Function(CategoryResponse data)? getCategoriesSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCategoriesLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getCategoriesError,
    TResult Function(CategoryResponse data)? getCategoriesSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetCategoriesLoading value) getCategoriesLoading,
    required TResult Function(GetCategoriesError value) getCategoriesError,
    required TResult Function(GetCategoriesSuccess value) getCategoriesSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetCategoriesLoading value)? getCategoriesLoading,
    TResult? Function(GetCategoriesError value)? getCategoriesError,
    TResult? Function(GetCategoriesSuccess value)? getCategoriesSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetCategoriesLoading value)? getCategoriesLoading,
    TResult Function(GetCategoriesError value)? getCategoriesError,
    TResult Function(GetCategoriesSuccess value)? getCategoriesSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

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
    extends _$CategoryStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'CategoryState.initial()';
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
    required TResult Function() getCategoriesLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getCategoriesError,
    required TResult Function(CategoryResponse data) getCategoriesSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCategoriesLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getCategoriesError,
    TResult? Function(CategoryResponse data)? getCategoriesSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCategoriesLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getCategoriesError,
    TResult Function(CategoryResponse data)? getCategoriesSuccess,
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
    required TResult Function(GetCategoriesLoading value) getCategoriesLoading,
    required TResult Function(GetCategoriesError value) getCategoriesError,
    required TResult Function(GetCategoriesSuccess value) getCategoriesSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetCategoriesLoading value)? getCategoriesLoading,
    TResult? Function(GetCategoriesError value)? getCategoriesError,
    TResult? Function(GetCategoriesSuccess value)? getCategoriesSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetCategoriesLoading value)? getCategoriesLoading,
    TResult Function(GetCategoriesError value)? getCategoriesError,
    TResult Function(GetCategoriesSuccess value)? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CategoryState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GetCategoriesLoadingImplCopyWith<$Res> {
  factory _$$GetCategoriesLoadingImplCopyWith(_$GetCategoriesLoadingImpl value,
          $Res Function(_$GetCategoriesLoadingImpl) then) =
      __$$GetCategoriesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCategoriesLoadingImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$GetCategoriesLoadingImpl>
    implements _$$GetCategoriesLoadingImplCopyWith<$Res> {
  __$$GetCategoriesLoadingImplCopyWithImpl(_$GetCategoriesLoadingImpl _value,
      $Res Function(_$GetCategoriesLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCategoriesLoadingImpl implements GetCategoriesLoading {
  const _$GetCategoriesLoadingImpl();

  @override
  String toString() {
    return 'CategoryState.getCategoriesLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCategoriesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getCategoriesLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getCategoriesError,
    required TResult Function(CategoryResponse data) getCategoriesSuccess,
  }) {
    return getCategoriesLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCategoriesLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getCategoriesError,
    TResult? Function(CategoryResponse data)? getCategoriesSuccess,
  }) {
    return getCategoriesLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCategoriesLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getCategoriesError,
    TResult Function(CategoryResponse data)? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (getCategoriesLoading != null) {
      return getCategoriesLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetCategoriesLoading value) getCategoriesLoading,
    required TResult Function(GetCategoriesError value) getCategoriesError,
    required TResult Function(GetCategoriesSuccess value) getCategoriesSuccess,
  }) {
    return getCategoriesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetCategoriesLoading value)? getCategoriesLoading,
    TResult? Function(GetCategoriesError value)? getCategoriesError,
    TResult? Function(GetCategoriesSuccess value)? getCategoriesSuccess,
  }) {
    return getCategoriesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetCategoriesLoading value)? getCategoriesLoading,
    TResult Function(GetCategoriesError value)? getCategoriesError,
    TResult Function(GetCategoriesSuccess value)? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (getCategoriesLoading != null) {
      return getCategoriesLoading(this);
    }
    return orElse();
  }
}

abstract class GetCategoriesLoading implements CategoryState {
  const factory GetCategoriesLoading() = _$GetCategoriesLoadingImpl;
}

/// @nodoc
abstract class _$$GetCategoriesErrorImplCopyWith<$Res> {
  factory _$$GetCategoriesErrorImplCopyWith(_$GetCategoriesErrorImpl value,
          $Res Function(_$GetCategoriesErrorImpl) then) =
      __$$GetCategoriesErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$GetCategoriesErrorImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$GetCategoriesErrorImpl>
    implements _$$GetCategoriesErrorImplCopyWith<$Res> {
  __$$GetCategoriesErrorImplCopyWithImpl(_$GetCategoriesErrorImpl _value,
      $Res Function(_$GetCategoriesErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$GetCategoriesErrorImpl(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$GetCategoriesErrorImpl implements GetCategoriesError {
  const _$GetCategoriesErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'CategoryState.getCategoriesError(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCategoriesErrorImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCategoriesErrorImplCopyWith<_$GetCategoriesErrorImpl> get copyWith =>
      __$$GetCategoriesErrorImplCopyWithImpl<_$GetCategoriesErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getCategoriesLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getCategoriesError,
    required TResult Function(CategoryResponse data) getCategoriesSuccess,
  }) {
    return getCategoriesError(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCategoriesLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getCategoriesError,
    TResult? Function(CategoryResponse data)? getCategoriesSuccess,
  }) {
    return getCategoriesError?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCategoriesLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getCategoriesError,
    TResult Function(CategoryResponse data)? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (getCategoriesError != null) {
      return getCategoriesError(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetCategoriesLoading value) getCategoriesLoading,
    required TResult Function(GetCategoriesError value) getCategoriesError,
    required TResult Function(GetCategoriesSuccess value) getCategoriesSuccess,
  }) {
    return getCategoriesError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetCategoriesLoading value)? getCategoriesLoading,
    TResult? Function(GetCategoriesError value)? getCategoriesError,
    TResult? Function(GetCategoriesSuccess value)? getCategoriesSuccess,
  }) {
    return getCategoriesError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetCategoriesLoading value)? getCategoriesLoading,
    TResult Function(GetCategoriesError value)? getCategoriesError,
    TResult Function(GetCategoriesSuccess value)? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (getCategoriesError != null) {
      return getCategoriesError(this);
    }
    return orElse();
  }
}

abstract class GetCategoriesError implements CategoryState {
  const factory GetCategoriesError(final ApiErrorModel apiErrorModel) =
      _$GetCategoriesErrorImpl;

  ApiErrorModel get apiErrorModel;
  @JsonKey(ignore: true)
  _$$GetCategoriesErrorImplCopyWith<_$GetCategoriesErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCategoriesSuccessImplCopyWith<$Res> {
  factory _$$GetCategoriesSuccessImplCopyWith(_$GetCategoriesSuccessImpl value,
          $Res Function(_$GetCategoriesSuccessImpl) then) =
      __$$GetCategoriesSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryResponse data});
}

/// @nodoc
class __$$GetCategoriesSuccessImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$GetCategoriesSuccessImpl>
    implements _$$GetCategoriesSuccessImplCopyWith<$Res> {
  __$$GetCategoriesSuccessImplCopyWithImpl(_$GetCategoriesSuccessImpl _value,
      $Res Function(_$GetCategoriesSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GetCategoriesSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CategoryResponse,
    ));
  }
}

/// @nodoc

class _$GetCategoriesSuccessImpl implements GetCategoriesSuccess {
  const _$GetCategoriesSuccessImpl(this.data);

  @override
  final CategoryResponse data;

  @override
  String toString() {
    return 'CategoryState.getCategoriesSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCategoriesSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCategoriesSuccessImplCopyWith<_$GetCategoriesSuccessImpl>
      get copyWith =>
          __$$GetCategoriesSuccessImplCopyWithImpl<_$GetCategoriesSuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getCategoriesLoading,
    required TResult Function(ApiErrorModel apiErrorModel) getCategoriesError,
    required TResult Function(CategoryResponse data) getCategoriesSuccess,
  }) {
    return getCategoriesSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCategoriesLoading,
    TResult? Function(ApiErrorModel apiErrorModel)? getCategoriesError,
    TResult? Function(CategoryResponse data)? getCategoriesSuccess,
  }) {
    return getCategoriesSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCategoriesLoading,
    TResult Function(ApiErrorModel apiErrorModel)? getCategoriesError,
    TResult Function(CategoryResponse data)? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (getCategoriesSuccess != null) {
      return getCategoriesSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetCategoriesLoading value) getCategoriesLoading,
    required TResult Function(GetCategoriesError value) getCategoriesError,
    required TResult Function(GetCategoriesSuccess value) getCategoriesSuccess,
  }) {
    return getCategoriesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetCategoriesLoading value)? getCategoriesLoading,
    TResult? Function(GetCategoriesError value)? getCategoriesError,
    TResult? Function(GetCategoriesSuccess value)? getCategoriesSuccess,
  }) {
    return getCategoriesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetCategoriesLoading value)? getCategoriesLoading,
    TResult Function(GetCategoriesError value)? getCategoriesError,
    TResult Function(GetCategoriesSuccess value)? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (getCategoriesSuccess != null) {
      return getCategoriesSuccess(this);
    }
    return orElse();
  }
}

abstract class GetCategoriesSuccess implements CategoryState {
  const factory GetCategoriesSuccess(final CategoryResponse data) =
      _$GetCategoriesSuccessImpl;

  CategoryResponse get data;
  @JsonKey(ignore: true)
  _$$GetCategoriesSuccessImplCopyWith<_$GetCategoriesSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
