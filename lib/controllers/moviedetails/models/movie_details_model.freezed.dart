// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieDetailsModel _$MovieDetailsModelFromJson(Map<String, dynamic> json) {
  return _MovieDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$MovieDetailsModel {
  bool get adult => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String get backgroundImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int get movieId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "overview")
  String get movieDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String get posterUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailsModelCopyWith<MovieDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsModelCopyWith<$Res> {
  factory $MovieDetailsModelCopyWith(
          MovieDetailsModel value, $Res Function(MovieDetailsModel) then) =
      _$MovieDetailsModelCopyWithImpl<$Res, MovieDetailsModel>;
  @useResult
  $Res call(
      {bool adult,
      @JsonKey(name: "backdrop_path") String backgroundImageUrl,
      @JsonKey(name: "id") int movieId,
      String title,
      @JsonKey(name: "overview") String movieDescription,
      @JsonKey(name: "poster_path") String posterUrl});
}

/// @nodoc
class _$MovieDetailsModelCopyWithImpl<$Res, $Val extends MovieDetailsModel>
    implements $MovieDetailsModelCopyWith<$Res> {
  _$MovieDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? backgroundImageUrl = null,
    Object? movieId = null,
    Object? title = null,
    Object? movieDescription = null,
    Object? posterUrl = null,
  }) {
    return _then(_value.copyWith(
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backgroundImageUrl: null == backgroundImageUrl
          ? _value.backgroundImageUrl
          : backgroundImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      movieDescription: null == movieDescription
          ? _value.movieDescription
          : movieDescription // ignore: cast_nullable_to_non_nullable
              as String,
      posterUrl: null == posterUrl
          ? _value.posterUrl
          : posterUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieDetailsModelImplCopyWith<$Res>
    implements $MovieDetailsModelCopyWith<$Res> {
  factory _$$MovieDetailsModelImplCopyWith(_$MovieDetailsModelImpl value,
          $Res Function(_$MovieDetailsModelImpl) then) =
      __$$MovieDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool adult,
      @JsonKey(name: "backdrop_path") String backgroundImageUrl,
      @JsonKey(name: "id") int movieId,
      String title,
      @JsonKey(name: "overview") String movieDescription,
      @JsonKey(name: "poster_path") String posterUrl});
}

/// @nodoc
class __$$MovieDetailsModelImplCopyWithImpl<$Res>
    extends _$MovieDetailsModelCopyWithImpl<$Res, _$MovieDetailsModelImpl>
    implements _$$MovieDetailsModelImplCopyWith<$Res> {
  __$$MovieDetailsModelImplCopyWithImpl(_$MovieDetailsModelImpl _value,
      $Res Function(_$MovieDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? backgroundImageUrl = null,
    Object? movieId = null,
    Object? title = null,
    Object? movieDescription = null,
    Object? posterUrl = null,
  }) {
    return _then(_$MovieDetailsModelImpl(
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backgroundImageUrl: null == backgroundImageUrl
          ? _value.backgroundImageUrl
          : backgroundImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      movieDescription: null == movieDescription
          ? _value.movieDescription
          : movieDescription // ignore: cast_nullable_to_non_nullable
              as String,
      posterUrl: null == posterUrl
          ? _value.posterUrl
          : posterUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$MovieDetailsModelImpl implements _MovieDetailsModel {
  const _$MovieDetailsModelImpl(
      {required this.adult,
      @JsonKey(name: "backdrop_path") required this.backgroundImageUrl,
      @JsonKey(name: "id") required this.movieId,
      required this.title,
      @JsonKey(name: "overview") required this.movieDescription,
      @JsonKey(name: "poster_path") required this.posterUrl});

  factory _$MovieDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieDetailsModelImplFromJson(json);

  @override
  final bool adult;
  @override
  @JsonKey(name: "backdrop_path")
  final String backgroundImageUrl;
  @override
  @JsonKey(name: "id")
  final int movieId;
  @override
  final String title;
  @override
  @JsonKey(name: "overview")
  final String movieDescription;
  @override
  @JsonKey(name: "poster_path")
  final String posterUrl;

  @override
  String toString() {
    return 'MovieDetailsModel(adult: $adult, backgroundImageUrl: $backgroundImageUrl, movieId: $movieId, title: $title, movieDescription: $movieDescription, posterUrl: $posterUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailsModelImpl &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backgroundImageUrl, backgroundImageUrl) ||
                other.backgroundImageUrl == backgroundImageUrl) &&
            (identical(other.movieId, movieId) || other.movieId == movieId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.movieDescription, movieDescription) ||
                other.movieDescription == movieDescription) &&
            (identical(other.posterUrl, posterUrl) ||
                other.posterUrl == posterUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, adult, backgroundImageUrl,
      movieId, title, movieDescription, posterUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailsModelImplCopyWith<_$MovieDetailsModelImpl> get copyWith =>
      __$$MovieDetailsModelImplCopyWithImpl<_$MovieDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _MovieDetailsModel implements MovieDetailsModel {
  const factory _MovieDetailsModel(
      {required final bool adult,
      @JsonKey(name: "backdrop_path") required final String backgroundImageUrl,
      @JsonKey(name: "id") required final int movieId,
      required final String title,
      @JsonKey(name: "overview") required final String movieDescription,
      @JsonKey(name: "poster_path")
      required final String posterUrl}) = _$MovieDetailsModelImpl;

  factory _MovieDetailsModel.fromJson(Map<String, dynamic> json) =
      _$MovieDetailsModelImpl.fromJson;

  @override
  bool get adult;
  @override
  @JsonKey(name: "backdrop_path")
  String get backgroundImageUrl;
  @override
  @JsonKey(name: "id")
  int get movieId;
  @override
  String get title;
  @override
  @JsonKey(name: "overview")
  String get movieDescription;
  @override
  @JsonKey(name: "poster_path")
  String get posterUrl;
  @override
  @JsonKey(ignore: true)
  _$$MovieDetailsModelImplCopyWith<_$MovieDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
