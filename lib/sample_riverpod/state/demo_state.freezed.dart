// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'demo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DemoStateTearOff {
  const _$DemoStateTearOff();

  DemoStateData call() {
    return const DemoStateData();
  }

  DemoStateLoading loading() {
    return const DemoStateLoading();
  }

  DemoStateError error(dynamic error) {
    return DemoStateError(
      error,
    );
  }
}

/// @nodoc
const $DemoState = _$DemoStateTearOff();

/// @nodoc
mixin _$DemoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DemoStateData value) $default, {
    required TResult Function(DemoStateLoading value) loading,
    required TResult Function(DemoStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(DemoStateData value)? $default, {
    TResult Function(DemoStateLoading value)? loading,
    TResult Function(DemoStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DemoStateData value)? $default, {
    TResult Function(DemoStateLoading value)? loading,
    TResult Function(DemoStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DemoStateCopyWith<$Res> {
  factory $DemoStateCopyWith(DemoState value, $Res Function(DemoState) then) =
      _$DemoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DemoStateCopyWithImpl<$Res> implements $DemoStateCopyWith<$Res> {
  _$DemoStateCopyWithImpl(this._value, this._then);

  final DemoState _value;
  // ignore: unused_field
  final $Res Function(DemoState) _then;
}

/// @nodoc
abstract class $DemoStateDataCopyWith<$Res> {
  factory $DemoStateDataCopyWith(
          DemoStateData value, $Res Function(DemoStateData) then) =
      _$DemoStateDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$DemoStateDataCopyWithImpl<$Res> extends _$DemoStateCopyWithImpl<$Res>
    implements $DemoStateDataCopyWith<$Res> {
  _$DemoStateDataCopyWithImpl(
      DemoStateData _value, $Res Function(DemoStateData) _then)
      : super(_value, (v) => _then(v as DemoStateData));

  @override
  DemoStateData get _value => super._value as DemoStateData;
}

/// @nodoc

class _$DemoStateData implements DemoStateData {
  const _$DemoStateData();

  @override
  String toString() {
    return 'DemoState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DemoStateData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DemoStateData value) $default, {
    required TResult Function(DemoStateLoading value) loading,
    required TResult Function(DemoStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(DemoStateData value)? $default, {
    TResult Function(DemoStateLoading value)? loading,
    TResult Function(DemoStateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DemoStateData value)? $default, {
    TResult Function(DemoStateLoading value)? loading,
    TResult Function(DemoStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class DemoStateData implements DemoState {
  const factory DemoStateData() = _$DemoStateData;
}

/// @nodoc
abstract class $DemoStateLoadingCopyWith<$Res> {
  factory $DemoStateLoadingCopyWith(
          DemoStateLoading value, $Res Function(DemoStateLoading) then) =
      _$DemoStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$DemoStateLoadingCopyWithImpl<$Res> extends _$DemoStateCopyWithImpl<$Res>
    implements $DemoStateLoadingCopyWith<$Res> {
  _$DemoStateLoadingCopyWithImpl(
      DemoStateLoading _value, $Res Function(DemoStateLoading) _then)
      : super(_value, (v) => _then(v as DemoStateLoading));

  @override
  DemoStateLoading get _value => super._value as DemoStateLoading;
}

/// @nodoc

class _$DemoStateLoading implements DemoStateLoading {
  const _$DemoStateLoading();

  @override
  String toString() {
    return 'DemoState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DemoStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DemoStateData value) $default, {
    required TResult Function(DemoStateLoading value) loading,
    required TResult Function(DemoStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(DemoStateData value)? $default, {
    TResult Function(DemoStateLoading value)? loading,
    TResult Function(DemoStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DemoStateData value)? $default, {
    TResult Function(DemoStateLoading value)? loading,
    TResult Function(DemoStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DemoStateLoading implements DemoState {
  const factory DemoStateLoading() = _$DemoStateLoading;
}

/// @nodoc
abstract class $DemoStateErrorCopyWith<$Res> {
  factory $DemoStateErrorCopyWith(
          DemoStateError value, $Res Function(DemoStateError) then) =
      _$DemoStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$DemoStateErrorCopyWithImpl<$Res> extends _$DemoStateCopyWithImpl<$Res>
    implements $DemoStateErrorCopyWith<$Res> {
  _$DemoStateErrorCopyWithImpl(
      DemoStateError _value, $Res Function(DemoStateError) _then)
      : super(_value, (v) => _then(v as DemoStateError));

  @override
  DemoStateError get _value => super._value as DemoStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(DemoStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$DemoStateError implements DemoStateError {
  const _$DemoStateError(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'DemoState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DemoStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $DemoStateErrorCopyWith<DemoStateError> get copyWith =>
      _$DemoStateErrorCopyWithImpl<DemoStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DemoStateData value) $default, {
    required TResult Function(DemoStateLoading value) loading,
    required TResult Function(DemoStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(DemoStateData value)? $default, {
    TResult Function(DemoStateLoading value)? loading,
    TResult Function(DemoStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DemoStateData value)? $default, {
    TResult Function(DemoStateLoading value)? loading,
    TResult Function(DemoStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DemoStateError implements DemoState {
  const factory DemoStateError(dynamic error) = _$DemoStateError;

  dynamic get error;
  @JsonKey(ignore: true)
  $DemoStateErrorCopyWith<DemoStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
