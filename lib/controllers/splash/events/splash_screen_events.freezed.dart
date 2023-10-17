// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_screen_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplashScreenEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSplashEvent value) initEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSplashEvent value)? initEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSplashEvent value)? initEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashScreenEventsCopyWith<$Res> {
  factory $SplashScreenEventsCopyWith(
          SplashScreenEvents value, $Res Function(SplashScreenEvents) then) =
      _$SplashScreenEventsCopyWithImpl<$Res, SplashScreenEvents>;
}

/// @nodoc
class _$SplashScreenEventsCopyWithImpl<$Res, $Val extends SplashScreenEvents>
    implements $SplashScreenEventsCopyWith<$Res> {
  _$SplashScreenEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitSplashEventImplCopyWith<$Res> {
  factory _$$InitSplashEventImplCopyWith(_$InitSplashEventImpl value,
          $Res Function(_$InitSplashEventImpl) then) =
      __$$InitSplashEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitSplashEventImplCopyWithImpl<$Res>
    extends _$SplashScreenEventsCopyWithImpl<$Res, _$InitSplashEventImpl>
    implements _$$InitSplashEventImplCopyWith<$Res> {
  __$$InitSplashEventImplCopyWithImpl(
      _$InitSplashEventImpl _value, $Res Function(_$InitSplashEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitSplashEventImpl implements InitSplashEvent {
  const _$InitSplashEventImpl();

  @override
  String toString() {
    return 'SplashScreenEvents.initEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitSplashEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initEvent,
  }) {
    return initEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initEvent,
  }) {
    return initEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initEvent,
    required TResult orElse(),
  }) {
    if (initEvent != null) {
      return initEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSplashEvent value) initEvent,
  }) {
    return initEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSplashEvent value)? initEvent,
  }) {
    return initEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSplashEvent value)? initEvent,
    required TResult orElse(),
  }) {
    if (initEvent != null) {
      return initEvent(this);
    }
    return orElse();
  }
}

abstract class InitSplashEvent implements SplashScreenEvents {
  const factory InitSplashEvent() = _$InitSplashEventImpl;
}
