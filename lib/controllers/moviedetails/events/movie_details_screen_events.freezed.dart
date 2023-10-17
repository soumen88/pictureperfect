// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_details_screen_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieDetailsScreenEvents {
  int get movieId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int movieId) initMovieDetailsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int movieId)? initMovieDetailsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int movieId)? initMovieDetailsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitMovieDetailsEvent value)
        initMovieDetailsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitMovieDetailsEvent value)? initMovieDetailsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitMovieDetailsEvent value)? initMovieDetailsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailsScreenEventsCopyWith<MovieDetailsScreenEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsScreenEventsCopyWith<$Res> {
  factory $MovieDetailsScreenEventsCopyWith(MovieDetailsScreenEvents value,
          $Res Function(MovieDetailsScreenEvents) then) =
      _$MovieDetailsScreenEventsCopyWithImpl<$Res, MovieDetailsScreenEvents>;
  @useResult
  $Res call({int movieId});
}

/// @nodoc
class _$MovieDetailsScreenEventsCopyWithImpl<$Res,
        $Val extends MovieDetailsScreenEvents>
    implements $MovieDetailsScreenEventsCopyWith<$Res> {
  _$MovieDetailsScreenEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
  }) {
    return _then(_value.copyWith(
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitMovieDetailsEventImplCopyWith<$Res>
    implements $MovieDetailsScreenEventsCopyWith<$Res> {
  factory _$$InitMovieDetailsEventImplCopyWith(
          _$InitMovieDetailsEventImpl value,
          $Res Function(_$InitMovieDetailsEventImpl) then) =
      __$$InitMovieDetailsEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int movieId});
}

/// @nodoc
class __$$InitMovieDetailsEventImplCopyWithImpl<$Res>
    extends _$MovieDetailsScreenEventsCopyWithImpl<$Res,
        _$InitMovieDetailsEventImpl>
    implements _$$InitMovieDetailsEventImplCopyWith<$Res> {
  __$$InitMovieDetailsEventImplCopyWithImpl(_$InitMovieDetailsEventImpl _value,
      $Res Function(_$InitMovieDetailsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
  }) {
    return _then(_$InitMovieDetailsEventImpl(
      null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitMovieDetailsEventImpl implements InitMovieDetailsEvent {
  const _$InitMovieDetailsEventImpl(this.movieId);

  @override
  final int movieId;

  @override
  String toString() {
    return 'MovieDetailsScreenEvents.initMovieDetailsEvent(movieId: $movieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitMovieDetailsEventImpl &&
            (identical(other.movieId, movieId) || other.movieId == movieId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitMovieDetailsEventImplCopyWith<_$InitMovieDetailsEventImpl>
      get copyWith => __$$InitMovieDetailsEventImplCopyWithImpl<
          _$InitMovieDetailsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int movieId) initMovieDetailsEvent,
  }) {
    return initMovieDetailsEvent(movieId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int movieId)? initMovieDetailsEvent,
  }) {
    return initMovieDetailsEvent?.call(movieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int movieId)? initMovieDetailsEvent,
    required TResult orElse(),
  }) {
    if (initMovieDetailsEvent != null) {
      return initMovieDetailsEvent(movieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitMovieDetailsEvent value)
        initMovieDetailsEvent,
  }) {
    return initMovieDetailsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitMovieDetailsEvent value)? initMovieDetailsEvent,
  }) {
    return initMovieDetailsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitMovieDetailsEvent value)? initMovieDetailsEvent,
    required TResult orElse(),
  }) {
    if (initMovieDetailsEvent != null) {
      return initMovieDetailsEvent(this);
    }
    return orElse();
  }
}

abstract class InitMovieDetailsEvent implements MovieDetailsScreenEvents {
  const factory InitMovieDetailsEvent(final int movieId) =
      _$InitMovieDetailsEventImpl;

  @override
  int get movieId;
  @override
  @JsonKey(ignore: true)
  _$$InitMovieDetailsEventImplCopyWith<_$InitMovieDetailsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
