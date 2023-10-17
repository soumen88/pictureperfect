// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_home_screen_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieHomeScreenEvents {
  MoviesCategoryEnum get moviesCategoryEnum =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MoviesCategoryEnum moviesCategoryEnum)
        initMovieEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MoviesCategoryEnum moviesCategoryEnum)? initMovieEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MoviesCategoryEnum moviesCategoryEnum)? initMovieEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitMovieEvent value) initMovieEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitMovieEvent value)? initMovieEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitMovieEvent value)? initMovieEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieHomeScreenEventsCopyWith<MovieHomeScreenEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieHomeScreenEventsCopyWith<$Res> {
  factory $MovieHomeScreenEventsCopyWith(MovieHomeScreenEvents value,
          $Res Function(MovieHomeScreenEvents) then) =
      _$MovieHomeScreenEventsCopyWithImpl<$Res, MovieHomeScreenEvents>;
  @useResult
  $Res call({MoviesCategoryEnum moviesCategoryEnum});
}

/// @nodoc
class _$MovieHomeScreenEventsCopyWithImpl<$Res,
        $Val extends MovieHomeScreenEvents>
    implements $MovieHomeScreenEventsCopyWith<$Res> {
  _$MovieHomeScreenEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moviesCategoryEnum = null,
  }) {
    return _then(_value.copyWith(
      moviesCategoryEnum: null == moviesCategoryEnum
          ? _value.moviesCategoryEnum
          : moviesCategoryEnum // ignore: cast_nullable_to_non_nullable
              as MoviesCategoryEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitMovieEventImplCopyWith<$Res>
    implements $MovieHomeScreenEventsCopyWith<$Res> {
  factory _$$InitMovieEventImplCopyWith(_$InitMovieEventImpl value,
          $Res Function(_$InitMovieEventImpl) then) =
      __$$InitMovieEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MoviesCategoryEnum moviesCategoryEnum});
}

/// @nodoc
class __$$InitMovieEventImplCopyWithImpl<$Res>
    extends _$MovieHomeScreenEventsCopyWithImpl<$Res, _$InitMovieEventImpl>
    implements _$$InitMovieEventImplCopyWith<$Res> {
  __$$InitMovieEventImplCopyWithImpl(
      _$InitMovieEventImpl _value, $Res Function(_$InitMovieEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moviesCategoryEnum = null,
  }) {
    return _then(_$InitMovieEventImpl(
      null == moviesCategoryEnum
          ? _value.moviesCategoryEnum
          : moviesCategoryEnum // ignore: cast_nullable_to_non_nullable
              as MoviesCategoryEnum,
    ));
  }
}

/// @nodoc

class _$InitMovieEventImpl implements InitMovieEvent {
  const _$InitMovieEventImpl(this.moviesCategoryEnum);

  @override
  final MoviesCategoryEnum moviesCategoryEnum;

  @override
  String toString() {
    return 'MovieHomeScreenEvents.initMovieEvent(moviesCategoryEnum: $moviesCategoryEnum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitMovieEventImpl &&
            (identical(other.moviesCategoryEnum, moviesCategoryEnum) ||
                other.moviesCategoryEnum == moviesCategoryEnum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, moviesCategoryEnum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitMovieEventImplCopyWith<_$InitMovieEventImpl> get copyWith =>
      __$$InitMovieEventImplCopyWithImpl<_$InitMovieEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MoviesCategoryEnum moviesCategoryEnum)
        initMovieEvent,
  }) {
    return initMovieEvent(moviesCategoryEnum);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MoviesCategoryEnum moviesCategoryEnum)? initMovieEvent,
  }) {
    return initMovieEvent?.call(moviesCategoryEnum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MoviesCategoryEnum moviesCategoryEnum)? initMovieEvent,
    required TResult orElse(),
  }) {
    if (initMovieEvent != null) {
      return initMovieEvent(moviesCategoryEnum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitMovieEvent value) initMovieEvent,
  }) {
    return initMovieEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitMovieEvent value)? initMovieEvent,
  }) {
    return initMovieEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitMovieEvent value)? initMovieEvent,
    required TResult orElse(),
  }) {
    if (initMovieEvent != null) {
      return initMovieEvent(this);
    }
    return orElse();
  }
}

abstract class InitMovieEvent implements MovieHomeScreenEvents {
  const factory InitMovieEvent(final MoviesCategoryEnum moviesCategoryEnum) =
      _$InitMovieEventImpl;

  @override
  MoviesCategoryEnum get moviesCategoryEnum;
  @override
  @JsonKey(ignore: true)
  _$$InitMovieEventImplCopyWith<_$InitMovieEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
