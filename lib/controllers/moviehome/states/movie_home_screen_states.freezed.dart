// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_home_screen_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieHomeScreenStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MovieModel movieModel, List<String> imageUrls,
            String moviesCategory)
        displayView,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MovieModel movieModel, List<String> imageUrls,
            String moviesCategory)?
        displayView,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MovieModel movieModel, List<String> imageUrls,
            String moviesCategory)?
        displayView,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayMoviesList value) displayView,
    required TResult Function(_DisplayMovieLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayMoviesList value)? displayView,
    TResult? Function(_DisplayMovieLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayMoviesList value)? displayView,
    TResult Function(_DisplayMovieLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieHomeScreenStatesCopyWith<$Res> {
  factory $MovieHomeScreenStatesCopyWith(MovieHomeScreenStates value,
          $Res Function(MovieHomeScreenStates) then) =
      _$MovieHomeScreenStatesCopyWithImpl<$Res, MovieHomeScreenStates>;
}

/// @nodoc
class _$MovieHomeScreenStatesCopyWithImpl<$Res,
        $Val extends MovieHomeScreenStates>
    implements $MovieHomeScreenStatesCopyWith<$Res> {
  _$MovieHomeScreenStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DisplayMoviesListImplCopyWith<$Res> {
  factory _$$DisplayMoviesListImplCopyWith(_$DisplayMoviesListImpl value,
          $Res Function(_$DisplayMoviesListImpl) then) =
      __$$DisplayMoviesListImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {MovieModel movieModel, List<String> imageUrls, String moviesCategory});

  $MovieModelCopyWith<$Res> get movieModel;
}

/// @nodoc
class __$$DisplayMoviesListImplCopyWithImpl<$Res>
    extends _$MovieHomeScreenStatesCopyWithImpl<$Res, _$DisplayMoviesListImpl>
    implements _$$DisplayMoviesListImplCopyWith<$Res> {
  __$$DisplayMoviesListImplCopyWithImpl(_$DisplayMoviesListImpl _value,
      $Res Function(_$DisplayMoviesListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieModel = null,
    Object? imageUrls = null,
    Object? moviesCategory = null,
  }) {
    return _then(_$DisplayMoviesListImpl(
      null == movieModel
          ? _value.movieModel
          : movieModel // ignore: cast_nullable_to_non_nullable
              as MovieModel,
      null == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      null == moviesCategory
          ? _value.moviesCategory
          : moviesCategory // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieModelCopyWith<$Res> get movieModel {
    return $MovieModelCopyWith<$Res>(_value.movieModel, (value) {
      return _then(_value.copyWith(movieModel: value));
    });
  }
}

/// @nodoc

class _$DisplayMoviesListImpl implements _DisplayMoviesList {
  const _$DisplayMoviesListImpl(
      this.movieModel, final List<String> imageUrls, this.moviesCategory)
      : _imageUrls = imageUrls;

  @override
  final MovieModel movieModel;
  final List<String> _imageUrls;
  @override
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  @override
  final String moviesCategory;

  @override
  String toString() {
    return 'MovieHomeScreenStates.displayView(movieModel: $movieModel, imageUrls: $imageUrls, moviesCategory: $moviesCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayMoviesListImpl &&
            (identical(other.movieModel, movieModel) ||
                other.movieModel == movieModel) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls) &&
            (identical(other.moviesCategory, moviesCategory) ||
                other.moviesCategory == moviesCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieModel,
      const DeepCollectionEquality().hash(_imageUrls), moviesCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplayMoviesListImplCopyWith<_$DisplayMoviesListImpl> get copyWith =>
      __$$DisplayMoviesListImplCopyWithImpl<_$DisplayMoviesListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MovieModel movieModel, List<String> imageUrls,
            String moviesCategory)
        displayView,
    required TResult Function() loading,
  }) {
    return displayView(movieModel, imageUrls, moviesCategory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MovieModel movieModel, List<String> imageUrls,
            String moviesCategory)?
        displayView,
    TResult? Function()? loading,
  }) {
    return displayView?.call(movieModel, imageUrls, moviesCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MovieModel movieModel, List<String> imageUrls,
            String moviesCategory)?
        displayView,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (displayView != null) {
      return displayView(movieModel, imageUrls, moviesCategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayMoviesList value) displayView,
    required TResult Function(_DisplayMovieLoading value) loading,
  }) {
    return displayView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayMoviesList value)? displayView,
    TResult? Function(_DisplayMovieLoading value)? loading,
  }) {
    return displayView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayMoviesList value)? displayView,
    TResult Function(_DisplayMovieLoading value)? loading,
    required TResult orElse(),
  }) {
    if (displayView != null) {
      return displayView(this);
    }
    return orElse();
  }
}

abstract class _DisplayMoviesList implements MovieHomeScreenStates {
  const factory _DisplayMoviesList(
      final MovieModel movieModel,
      final List<String> imageUrls,
      final String moviesCategory) = _$DisplayMoviesListImpl;

  MovieModel get movieModel;
  List<String> get imageUrls;
  String get moviesCategory;
  @JsonKey(ignore: true)
  _$$DisplayMoviesListImplCopyWith<_$DisplayMoviesListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisplayMovieLoadingImplCopyWith<$Res> {
  factory _$$DisplayMovieLoadingImplCopyWith(_$DisplayMovieLoadingImpl value,
          $Res Function(_$DisplayMovieLoadingImpl) then) =
      __$$DisplayMovieLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisplayMovieLoadingImplCopyWithImpl<$Res>
    extends _$MovieHomeScreenStatesCopyWithImpl<$Res, _$DisplayMovieLoadingImpl>
    implements _$$DisplayMovieLoadingImplCopyWith<$Res> {
  __$$DisplayMovieLoadingImplCopyWithImpl(_$DisplayMovieLoadingImpl _value,
      $Res Function(_$DisplayMovieLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisplayMovieLoadingImpl implements _DisplayMovieLoading {
  const _$DisplayMovieLoadingImpl();

  @override
  String toString() {
    return 'MovieHomeScreenStates.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayMovieLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MovieModel movieModel, List<String> imageUrls,
            String moviesCategory)
        displayView,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MovieModel movieModel, List<String> imageUrls,
            String moviesCategory)?
        displayView,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MovieModel movieModel, List<String> imageUrls,
            String moviesCategory)?
        displayView,
    TResult Function()? loading,
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
    required TResult Function(_DisplayMoviesList value) displayView,
    required TResult Function(_DisplayMovieLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayMoviesList value)? displayView,
    TResult? Function(_DisplayMovieLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayMoviesList value)? displayView,
    TResult Function(_DisplayMovieLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _DisplayMovieLoading implements MovieHomeScreenStates {
  const factory _DisplayMovieLoading() = _$DisplayMovieLoadingImpl;
}
