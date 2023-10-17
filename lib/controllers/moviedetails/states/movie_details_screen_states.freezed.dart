// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_details_screen_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieDetailsScreenStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MovieDetailsModel movieDetailsModel) displayView,
    required TResult Function() loading,
    required TResult Function() startNextScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MovieDetailsModel movieDetailsModel)? displayView,
    TResult? Function()? loading,
    TResult? Function()? startNextScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MovieDetailsModel movieDetailsModel)? displayView,
    TResult Function()? loading,
    TResult Function()? startNextScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayMoviesDetails value) displayView,
    required TResult Function(_DisplayMovieDetailsLoading value) loading,
    required TResult Function(_StartNextScreen value) startNextScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayMoviesDetails value)? displayView,
    TResult? Function(_DisplayMovieDetailsLoading value)? loading,
    TResult? Function(_StartNextScreen value)? startNextScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayMoviesDetails value)? displayView,
    TResult Function(_DisplayMovieDetailsLoading value)? loading,
    TResult Function(_StartNextScreen value)? startNextScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsScreenStatesCopyWith<$Res> {
  factory $MovieDetailsScreenStatesCopyWith(MovieDetailsScreenStates value,
          $Res Function(MovieDetailsScreenStates) then) =
      _$MovieDetailsScreenStatesCopyWithImpl<$Res, MovieDetailsScreenStates>;
}

/// @nodoc
class _$MovieDetailsScreenStatesCopyWithImpl<$Res,
        $Val extends MovieDetailsScreenStates>
    implements $MovieDetailsScreenStatesCopyWith<$Res> {
  _$MovieDetailsScreenStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DisplayMoviesDetailsImplCopyWith<$Res> {
  factory _$$DisplayMoviesDetailsImplCopyWith(_$DisplayMoviesDetailsImpl value,
          $Res Function(_$DisplayMoviesDetailsImpl) then) =
      __$$DisplayMoviesDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MovieDetailsModel movieDetailsModel});

  $MovieDetailsModelCopyWith<$Res> get movieDetailsModel;
}

/// @nodoc
class __$$DisplayMoviesDetailsImplCopyWithImpl<$Res>
    extends _$MovieDetailsScreenStatesCopyWithImpl<$Res,
        _$DisplayMoviesDetailsImpl>
    implements _$$DisplayMoviesDetailsImplCopyWith<$Res> {
  __$$DisplayMoviesDetailsImplCopyWithImpl(_$DisplayMoviesDetailsImpl _value,
      $Res Function(_$DisplayMoviesDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieDetailsModel = null,
  }) {
    return _then(_$DisplayMoviesDetailsImpl(
      null == movieDetailsModel
          ? _value.movieDetailsModel
          : movieDetailsModel // ignore: cast_nullable_to_non_nullable
              as MovieDetailsModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieDetailsModelCopyWith<$Res> get movieDetailsModel {
    return $MovieDetailsModelCopyWith<$Res>(_value.movieDetailsModel, (value) {
      return _then(_value.copyWith(movieDetailsModel: value));
    });
  }
}

/// @nodoc

class _$DisplayMoviesDetailsImpl implements _DisplayMoviesDetails {
  const _$DisplayMoviesDetailsImpl(this.movieDetailsModel);

  @override
  final MovieDetailsModel movieDetailsModel;

  @override
  String toString() {
    return 'MovieDetailsScreenStates.displayView(movieDetailsModel: $movieDetailsModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayMoviesDetailsImpl &&
            (identical(other.movieDetailsModel, movieDetailsModel) ||
                other.movieDetailsModel == movieDetailsModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieDetailsModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplayMoviesDetailsImplCopyWith<_$DisplayMoviesDetailsImpl>
      get copyWith =>
          __$$DisplayMoviesDetailsImplCopyWithImpl<_$DisplayMoviesDetailsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MovieDetailsModel movieDetailsModel) displayView,
    required TResult Function() loading,
    required TResult Function() startNextScreen,
  }) {
    return displayView(movieDetailsModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MovieDetailsModel movieDetailsModel)? displayView,
    TResult? Function()? loading,
    TResult? Function()? startNextScreen,
  }) {
    return displayView?.call(movieDetailsModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MovieDetailsModel movieDetailsModel)? displayView,
    TResult Function()? loading,
    TResult Function()? startNextScreen,
    required TResult orElse(),
  }) {
    if (displayView != null) {
      return displayView(movieDetailsModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayMoviesDetails value) displayView,
    required TResult Function(_DisplayMovieDetailsLoading value) loading,
    required TResult Function(_StartNextScreen value) startNextScreen,
  }) {
    return displayView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayMoviesDetails value)? displayView,
    TResult? Function(_DisplayMovieDetailsLoading value)? loading,
    TResult? Function(_StartNextScreen value)? startNextScreen,
  }) {
    return displayView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayMoviesDetails value)? displayView,
    TResult Function(_DisplayMovieDetailsLoading value)? loading,
    TResult Function(_StartNextScreen value)? startNextScreen,
    required TResult orElse(),
  }) {
    if (displayView != null) {
      return displayView(this);
    }
    return orElse();
  }
}

abstract class _DisplayMoviesDetails implements MovieDetailsScreenStates {
  const factory _DisplayMoviesDetails(
      final MovieDetailsModel movieDetailsModel) = _$DisplayMoviesDetailsImpl;

  MovieDetailsModel get movieDetailsModel;
  @JsonKey(ignore: true)
  _$$DisplayMoviesDetailsImplCopyWith<_$DisplayMoviesDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisplayMovieDetailsLoadingImplCopyWith<$Res> {
  factory _$$DisplayMovieDetailsLoadingImplCopyWith(
          _$DisplayMovieDetailsLoadingImpl value,
          $Res Function(_$DisplayMovieDetailsLoadingImpl) then) =
      __$$DisplayMovieDetailsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisplayMovieDetailsLoadingImplCopyWithImpl<$Res>
    extends _$MovieDetailsScreenStatesCopyWithImpl<$Res,
        _$DisplayMovieDetailsLoadingImpl>
    implements _$$DisplayMovieDetailsLoadingImplCopyWith<$Res> {
  __$$DisplayMovieDetailsLoadingImplCopyWithImpl(
      _$DisplayMovieDetailsLoadingImpl _value,
      $Res Function(_$DisplayMovieDetailsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisplayMovieDetailsLoadingImpl implements _DisplayMovieDetailsLoading {
  const _$DisplayMovieDetailsLoadingImpl();

  @override
  String toString() {
    return 'MovieDetailsScreenStates.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayMovieDetailsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MovieDetailsModel movieDetailsModel) displayView,
    required TResult Function() loading,
    required TResult Function() startNextScreen,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MovieDetailsModel movieDetailsModel)? displayView,
    TResult? Function()? loading,
    TResult? Function()? startNextScreen,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MovieDetailsModel movieDetailsModel)? displayView,
    TResult Function()? loading,
    TResult Function()? startNextScreen,
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
    required TResult Function(_DisplayMoviesDetails value) displayView,
    required TResult Function(_DisplayMovieDetailsLoading value) loading,
    required TResult Function(_StartNextScreen value) startNextScreen,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayMoviesDetails value)? displayView,
    TResult? Function(_DisplayMovieDetailsLoading value)? loading,
    TResult? Function(_StartNextScreen value)? startNextScreen,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayMoviesDetails value)? displayView,
    TResult Function(_DisplayMovieDetailsLoading value)? loading,
    TResult Function(_StartNextScreen value)? startNextScreen,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _DisplayMovieDetailsLoading implements MovieDetailsScreenStates {
  const factory _DisplayMovieDetailsLoading() =
      _$DisplayMovieDetailsLoadingImpl;
}

/// @nodoc
abstract class _$$StartNextScreenImplCopyWith<$Res> {
  factory _$$StartNextScreenImplCopyWith(_$StartNextScreenImpl value,
          $Res Function(_$StartNextScreenImpl) then) =
      __$$StartNextScreenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartNextScreenImplCopyWithImpl<$Res>
    extends _$MovieDetailsScreenStatesCopyWithImpl<$Res, _$StartNextScreenImpl>
    implements _$$StartNextScreenImplCopyWith<$Res> {
  __$$StartNextScreenImplCopyWithImpl(
      _$StartNextScreenImpl _value, $Res Function(_$StartNextScreenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartNextScreenImpl implements _StartNextScreen {
  const _$StartNextScreenImpl();

  @override
  String toString() {
    return 'MovieDetailsScreenStates.startNextScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartNextScreenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MovieDetailsModel movieDetailsModel) displayView,
    required TResult Function() loading,
    required TResult Function() startNextScreen,
  }) {
    return startNextScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MovieDetailsModel movieDetailsModel)? displayView,
    TResult? Function()? loading,
    TResult? Function()? startNextScreen,
  }) {
    return startNextScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MovieDetailsModel movieDetailsModel)? displayView,
    TResult Function()? loading,
    TResult Function()? startNextScreen,
    required TResult orElse(),
  }) {
    if (startNextScreen != null) {
      return startNextScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayMoviesDetails value) displayView,
    required TResult Function(_DisplayMovieDetailsLoading value) loading,
    required TResult Function(_StartNextScreen value) startNextScreen,
  }) {
    return startNextScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayMoviesDetails value)? displayView,
    TResult? Function(_DisplayMovieDetailsLoading value)? loading,
    TResult? Function(_StartNextScreen value)? startNextScreen,
  }) {
    return startNextScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayMoviesDetails value)? displayView,
    TResult Function(_DisplayMovieDetailsLoading value)? loading,
    TResult Function(_StartNextScreen value)? startNextScreen,
    required TResult orElse(),
  }) {
    if (startNextScreen != null) {
      return startNextScreen(this);
    }
    return orElse();
  }
}

abstract class _StartNextScreen implements MovieDetailsScreenStates {
  const factory _StartNextScreen() = _$StartNextScreenImpl;
}
