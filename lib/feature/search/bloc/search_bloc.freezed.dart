// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String value) searchText,
    required TResult Function(int option) updateSelectedOption,
    required TResult Function(RangeValues range) updateSelectedRange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String value)? searchText,
    TResult? Function(int option)? updateSelectedOption,
    TResult? Function(RangeValues range)? updateSelectedRange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String value)? searchText,
    TResult Function(int option)? updateSelectedOption,
    TResult Function(RangeValues range)? updateSelectedRange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchText value) searchText,
    required TResult Function(_UpdateSelectedOption value) updateSelectedOption,
    required TResult Function(_UpdateSelectedRange value) updateSelectedRange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchText value)? searchText,
    TResult? Function(_UpdateSelectedOption value)? updateSelectedOption,
    TResult? Function(_UpdateSelectedRange value)? updateSelectedRange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchText value)? searchText,
    TResult Function(_UpdateSelectedOption value)? updateSelectedOption,
    TResult Function(_UpdateSelectedRange value)? updateSelectedRange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

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
    extends _$SearchEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'SearchEvent.started()';
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
    required TResult Function(String value) searchText,
    required TResult Function(int option) updateSelectedOption,
    required TResult Function(RangeValues range) updateSelectedRange,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String value)? searchText,
    TResult? Function(int option)? updateSelectedOption,
    TResult? Function(RangeValues range)? updateSelectedRange,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String value)? searchText,
    TResult Function(int option)? updateSelectedOption,
    TResult Function(RangeValues range)? updateSelectedRange,
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
    required TResult Function(_SearchText value) searchText,
    required TResult Function(_UpdateSelectedOption value) updateSelectedOption,
    required TResult Function(_UpdateSelectedRange value) updateSelectedRange,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchText value)? searchText,
    TResult? Function(_UpdateSelectedOption value)? updateSelectedOption,
    TResult? Function(_UpdateSelectedRange value)? updateSelectedRange,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchText value)? searchText,
    TResult Function(_UpdateSelectedOption value)? updateSelectedOption,
    TResult Function(_UpdateSelectedRange value)? updateSelectedRange,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SearchEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SearchTextImplCopyWith<$Res> {
  factory _$$SearchTextImplCopyWith(
          _$SearchTextImpl value, $Res Function(_$SearchTextImpl) then) =
      __$$SearchTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$SearchTextImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchTextImpl>
    implements _$$SearchTextImplCopyWith<$Res> {
  __$$SearchTextImplCopyWithImpl(
      _$SearchTextImpl _value, $Res Function(_$SearchTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SearchTextImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchTextImpl implements _SearchText {
  const _$SearchTextImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'SearchEvent.searchText(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchTextImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchTextImplCopyWith<_$SearchTextImpl> get copyWith =>
      __$$SearchTextImplCopyWithImpl<_$SearchTextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String value) searchText,
    required TResult Function(int option) updateSelectedOption,
    required TResult Function(RangeValues range) updateSelectedRange,
  }) {
    return searchText(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String value)? searchText,
    TResult? Function(int option)? updateSelectedOption,
    TResult? Function(RangeValues range)? updateSelectedRange,
  }) {
    return searchText?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String value)? searchText,
    TResult Function(int option)? updateSelectedOption,
    TResult Function(RangeValues range)? updateSelectedRange,
    required TResult orElse(),
  }) {
    if (searchText != null) {
      return searchText(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchText value) searchText,
    required TResult Function(_UpdateSelectedOption value) updateSelectedOption,
    required TResult Function(_UpdateSelectedRange value) updateSelectedRange,
  }) {
    return searchText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchText value)? searchText,
    TResult? Function(_UpdateSelectedOption value)? updateSelectedOption,
    TResult? Function(_UpdateSelectedRange value)? updateSelectedRange,
  }) {
    return searchText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchText value)? searchText,
    TResult Function(_UpdateSelectedOption value)? updateSelectedOption,
    TResult Function(_UpdateSelectedRange value)? updateSelectedRange,
    required TResult orElse(),
  }) {
    if (searchText != null) {
      return searchText(this);
    }
    return orElse();
  }
}

abstract class _SearchText implements SearchEvent {
  const factory _SearchText(final String value) = _$SearchTextImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$SearchTextImplCopyWith<_$SearchTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSelectedOptionImplCopyWith<$Res> {
  factory _$$UpdateSelectedOptionImplCopyWith(_$UpdateSelectedOptionImpl value,
          $Res Function(_$UpdateSelectedOptionImpl) then) =
      __$$UpdateSelectedOptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int option});
}

/// @nodoc
class __$$UpdateSelectedOptionImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$UpdateSelectedOptionImpl>
    implements _$$UpdateSelectedOptionImplCopyWith<$Res> {
  __$$UpdateSelectedOptionImplCopyWithImpl(_$UpdateSelectedOptionImpl _value,
      $Res Function(_$UpdateSelectedOptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? option = null,
  }) {
    return _then(_$UpdateSelectedOptionImpl(
      null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateSelectedOptionImpl implements _UpdateSelectedOption {
  const _$UpdateSelectedOptionImpl(this.option);

  @override
  final int option;

  @override
  String toString() {
    return 'SearchEvent.updateSelectedOption(option: $option)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSelectedOptionImpl &&
            (identical(other.option, option) || other.option == option));
  }

  @override
  int get hashCode => Object.hash(runtimeType, option);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSelectedOptionImplCopyWith<_$UpdateSelectedOptionImpl>
      get copyWith =>
          __$$UpdateSelectedOptionImplCopyWithImpl<_$UpdateSelectedOptionImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String value) searchText,
    required TResult Function(int option) updateSelectedOption,
    required TResult Function(RangeValues range) updateSelectedRange,
  }) {
    return updateSelectedOption(option);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String value)? searchText,
    TResult? Function(int option)? updateSelectedOption,
    TResult? Function(RangeValues range)? updateSelectedRange,
  }) {
    return updateSelectedOption?.call(option);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String value)? searchText,
    TResult Function(int option)? updateSelectedOption,
    TResult Function(RangeValues range)? updateSelectedRange,
    required TResult orElse(),
  }) {
    if (updateSelectedOption != null) {
      return updateSelectedOption(option);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchText value) searchText,
    required TResult Function(_UpdateSelectedOption value) updateSelectedOption,
    required TResult Function(_UpdateSelectedRange value) updateSelectedRange,
  }) {
    return updateSelectedOption(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchText value)? searchText,
    TResult? Function(_UpdateSelectedOption value)? updateSelectedOption,
    TResult? Function(_UpdateSelectedRange value)? updateSelectedRange,
  }) {
    return updateSelectedOption?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchText value)? searchText,
    TResult Function(_UpdateSelectedOption value)? updateSelectedOption,
    TResult Function(_UpdateSelectedRange value)? updateSelectedRange,
    required TResult orElse(),
  }) {
    if (updateSelectedOption != null) {
      return updateSelectedOption(this);
    }
    return orElse();
  }
}

abstract class _UpdateSelectedOption implements SearchEvent {
  const factory _UpdateSelectedOption(final int option) =
      _$UpdateSelectedOptionImpl;

  int get option;
  @JsonKey(ignore: true)
  _$$UpdateSelectedOptionImplCopyWith<_$UpdateSelectedOptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSelectedRangeImplCopyWith<$Res> {
  factory _$$UpdateSelectedRangeImplCopyWith(_$UpdateSelectedRangeImpl value,
          $Res Function(_$UpdateSelectedRangeImpl) then) =
      __$$UpdateSelectedRangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RangeValues range});
}

/// @nodoc
class __$$UpdateSelectedRangeImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$UpdateSelectedRangeImpl>
    implements _$$UpdateSelectedRangeImplCopyWith<$Res> {
  __$$UpdateSelectedRangeImplCopyWithImpl(_$UpdateSelectedRangeImpl _value,
      $Res Function(_$UpdateSelectedRangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? range = null,
  }) {
    return _then(_$UpdateSelectedRangeImpl(
      null == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as RangeValues,
    ));
  }
}

/// @nodoc

class _$UpdateSelectedRangeImpl implements _UpdateSelectedRange {
  const _$UpdateSelectedRangeImpl(this.range);

  @override
  final RangeValues range;

  @override
  String toString() {
    return 'SearchEvent.updateSelectedRange(range: $range)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSelectedRangeImpl &&
            (identical(other.range, range) || other.range == range));
  }

  @override
  int get hashCode => Object.hash(runtimeType, range);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSelectedRangeImplCopyWith<_$UpdateSelectedRangeImpl> get copyWith =>
      __$$UpdateSelectedRangeImplCopyWithImpl<_$UpdateSelectedRangeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String value) searchText,
    required TResult Function(int option) updateSelectedOption,
    required TResult Function(RangeValues range) updateSelectedRange,
  }) {
    return updateSelectedRange(range);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String value)? searchText,
    TResult? Function(int option)? updateSelectedOption,
    TResult? Function(RangeValues range)? updateSelectedRange,
  }) {
    return updateSelectedRange?.call(range);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String value)? searchText,
    TResult Function(int option)? updateSelectedOption,
    TResult Function(RangeValues range)? updateSelectedRange,
    required TResult orElse(),
  }) {
    if (updateSelectedRange != null) {
      return updateSelectedRange(range);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchText value) searchText,
    required TResult Function(_UpdateSelectedOption value) updateSelectedOption,
    required TResult Function(_UpdateSelectedRange value) updateSelectedRange,
  }) {
    return updateSelectedRange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchText value)? searchText,
    TResult? Function(_UpdateSelectedOption value)? updateSelectedOption,
    TResult? Function(_UpdateSelectedRange value)? updateSelectedRange,
  }) {
    return updateSelectedRange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchText value)? searchText,
    TResult Function(_UpdateSelectedOption value)? updateSelectedOption,
    TResult Function(_UpdateSelectedRange value)? updateSelectedRange,
    required TResult orElse(),
  }) {
    if (updateSelectedRange != null) {
      return updateSelectedRange(this);
    }
    return orElse();
  }
}

abstract class _UpdateSelectedRange implements SearchEvent {
  const factory _UpdateSelectedRange(final RangeValues range) =
      _$UpdateSelectedRangeImpl;

  RangeValues get range;
  @JsonKey(ignore: true)
  _$$UpdateSelectedRangeImplCopyWith<_$UpdateSelectedRangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProductResponse data) loaded,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function(int option) optionUpdated,
    required TResult Function(RangeValues range) rangeUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProductResponse data)? loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function(int option)? optionUpdated,
    TResult? Function(RangeValues range)? rangeUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProductResponse data)? loaded,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function(int option)? optionUpdated,
    TResult Function(RangeValues range)? rangeUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_OptionUpdated value) optionUpdated,
    required TResult Function(_RangeUpdated value) rangeUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_OptionUpdated value)? optionUpdated,
    TResult? Function(_RangeUpdated value)? rangeUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_OptionUpdated value)? optionUpdated,
    TResult Function(_RangeUpdated value)? rangeUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

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
    extends _$SearchStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'SearchState.initial()';
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
    required TResult Function(ProductResponse data) loaded,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function(int option) optionUpdated,
    required TResult Function(RangeValues range) rangeUpdated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProductResponse data)? loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function(int option)? optionUpdated,
    TResult? Function(RangeValues range)? rangeUpdated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProductResponse data)? loaded,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function(int option)? optionUpdated,
    TResult Function(RangeValues range)? rangeUpdated,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_OptionUpdated value) optionUpdated,
    required TResult Function(_RangeUpdated value) rangeUpdated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_OptionUpdated value)? optionUpdated,
    TResult? Function(_RangeUpdated value)? rangeUpdated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_OptionUpdated value)? optionUpdated,
    TResult Function(_RangeUpdated value)? rangeUpdated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'SearchState.loading()';
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
    required TResult Function(ProductResponse data) loaded,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function(int option) optionUpdated,
    required TResult Function(RangeValues range) rangeUpdated,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProductResponse data)? loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function(int option)? optionUpdated,
    TResult? Function(RangeValues range)? rangeUpdated,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProductResponse data)? loaded,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function(int option)? optionUpdated,
    TResult Function(RangeValues range)? rangeUpdated,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_OptionUpdated value) optionUpdated,
    required TResult Function(_RangeUpdated value) rangeUpdated,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_OptionUpdated value)? optionUpdated,
    TResult? Function(_RangeUpdated value)? rangeUpdated,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_OptionUpdated value)? optionUpdated,
    TResult Function(_RangeUpdated value)? rangeUpdated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SearchState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductResponse data});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadedImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductResponse,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(this.data);

  @override
  final ProductResponse data;

  @override
  String toString() {
    return 'SearchState.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

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
    required TResult Function(ProductResponse data) loaded,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function(int option) optionUpdated,
    required TResult Function(RangeValues range) rangeUpdated,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProductResponse data)? loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function(int option)? optionUpdated,
    TResult? Function(RangeValues range)? rangeUpdated,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProductResponse data)? loaded,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function(int option)? optionUpdated,
    TResult Function(RangeValues range)? rangeUpdated,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_OptionUpdated value) optionUpdated,
    required TResult Function(_RangeUpdated value) rangeUpdated,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_OptionUpdated value)? optionUpdated,
    TResult? Function(_RangeUpdated value)? rangeUpdated,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_OptionUpdated value)? optionUpdated,
    TResult Function(_RangeUpdated value)? rangeUpdated,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements SearchState {
  const factory _Loaded(final ProductResponse data) = _$LoadedImpl;

  ProductResponse get data;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$ErrorImpl(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'SearchState.error(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

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
    required TResult Function(ProductResponse data) loaded,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function(int option) optionUpdated,
    required TResult Function(RangeValues range) rangeUpdated,
  }) {
    return error(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProductResponse data)? loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function(int option)? optionUpdated,
    TResult? Function(RangeValues range)? rangeUpdated,
  }) {
    return error?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProductResponse data)? loaded,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function(int option)? optionUpdated,
    TResult Function(RangeValues range)? rangeUpdated,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_OptionUpdated value) optionUpdated,
    required TResult Function(_RangeUpdated value) rangeUpdated,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_OptionUpdated value)? optionUpdated,
    TResult? Function(_RangeUpdated value)? rangeUpdated,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_OptionUpdated value)? optionUpdated,
    TResult Function(_RangeUpdated value)? rangeUpdated,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SearchState {
  const factory _Error(final ApiErrorModel apiErrorModel) = _$ErrorImpl;

  ApiErrorModel get apiErrorModel;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OptionUpdatedImplCopyWith<$Res> {
  factory _$$OptionUpdatedImplCopyWith(
          _$OptionUpdatedImpl value, $Res Function(_$OptionUpdatedImpl) then) =
      __$$OptionUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int option});
}

/// @nodoc
class __$$OptionUpdatedImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$OptionUpdatedImpl>
    implements _$$OptionUpdatedImplCopyWith<$Res> {
  __$$OptionUpdatedImplCopyWithImpl(
      _$OptionUpdatedImpl _value, $Res Function(_$OptionUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? option = null,
  }) {
    return _then(_$OptionUpdatedImpl(
      null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OptionUpdatedImpl implements _OptionUpdated {
  const _$OptionUpdatedImpl(this.option);

  @override
  final int option;

  @override
  String toString() {
    return 'SearchState.optionUpdated(option: $option)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionUpdatedImpl &&
            (identical(other.option, option) || other.option == option));
  }

  @override
  int get hashCode => Object.hash(runtimeType, option);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionUpdatedImplCopyWith<_$OptionUpdatedImpl> get copyWith =>
      __$$OptionUpdatedImplCopyWithImpl<_$OptionUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProductResponse data) loaded,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function(int option) optionUpdated,
    required TResult Function(RangeValues range) rangeUpdated,
  }) {
    return optionUpdated(option);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProductResponse data)? loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function(int option)? optionUpdated,
    TResult? Function(RangeValues range)? rangeUpdated,
  }) {
    return optionUpdated?.call(option);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProductResponse data)? loaded,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function(int option)? optionUpdated,
    TResult Function(RangeValues range)? rangeUpdated,
    required TResult orElse(),
  }) {
    if (optionUpdated != null) {
      return optionUpdated(option);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_OptionUpdated value) optionUpdated,
    required TResult Function(_RangeUpdated value) rangeUpdated,
  }) {
    return optionUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_OptionUpdated value)? optionUpdated,
    TResult? Function(_RangeUpdated value)? rangeUpdated,
  }) {
    return optionUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_OptionUpdated value)? optionUpdated,
    TResult Function(_RangeUpdated value)? rangeUpdated,
    required TResult orElse(),
  }) {
    if (optionUpdated != null) {
      return optionUpdated(this);
    }
    return orElse();
  }
}

abstract class _OptionUpdated implements SearchState {
  const factory _OptionUpdated(final int option) = _$OptionUpdatedImpl;

  int get option;
  @JsonKey(ignore: true)
  _$$OptionUpdatedImplCopyWith<_$OptionUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RangeUpdatedImplCopyWith<$Res> {
  factory _$$RangeUpdatedImplCopyWith(
          _$RangeUpdatedImpl value, $Res Function(_$RangeUpdatedImpl) then) =
      __$$RangeUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RangeValues range});
}

/// @nodoc
class __$$RangeUpdatedImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$RangeUpdatedImpl>
    implements _$$RangeUpdatedImplCopyWith<$Res> {
  __$$RangeUpdatedImplCopyWithImpl(
      _$RangeUpdatedImpl _value, $Res Function(_$RangeUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? range = null,
  }) {
    return _then(_$RangeUpdatedImpl(
      null == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as RangeValues,
    ));
  }
}

/// @nodoc

class _$RangeUpdatedImpl implements _RangeUpdated {
  const _$RangeUpdatedImpl(this.range);

  @override
  final RangeValues range;

  @override
  String toString() {
    return 'SearchState.rangeUpdated(range: $range)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RangeUpdatedImpl &&
            (identical(other.range, range) || other.range == range));
  }

  @override
  int get hashCode => Object.hash(runtimeType, range);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RangeUpdatedImplCopyWith<_$RangeUpdatedImpl> get copyWith =>
      __$$RangeUpdatedImplCopyWithImpl<_$RangeUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProductResponse data) loaded,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function(int option) optionUpdated,
    required TResult Function(RangeValues range) rangeUpdated,
  }) {
    return rangeUpdated(range);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProductResponse data)? loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function(int option)? optionUpdated,
    TResult? Function(RangeValues range)? rangeUpdated,
  }) {
    return rangeUpdated?.call(range);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProductResponse data)? loaded,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function(int option)? optionUpdated,
    TResult Function(RangeValues range)? rangeUpdated,
    required TResult orElse(),
  }) {
    if (rangeUpdated != null) {
      return rangeUpdated(range);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_OptionUpdated value) optionUpdated,
    required TResult Function(_RangeUpdated value) rangeUpdated,
  }) {
    return rangeUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_OptionUpdated value)? optionUpdated,
    TResult? Function(_RangeUpdated value)? rangeUpdated,
  }) {
    return rangeUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_OptionUpdated value)? optionUpdated,
    TResult Function(_RangeUpdated value)? rangeUpdated,
    required TResult orElse(),
  }) {
    if (rangeUpdated != null) {
      return rangeUpdated(this);
    }
    return orElse();
  }
}

abstract class _RangeUpdated implements SearchState {
  const factory _RangeUpdated(final RangeValues range) = _$RangeUpdatedImpl;

  RangeValues get range;
  @JsonKey(ignore: true)
  _$$RangeUpdatedImplCopyWith<_$RangeUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
