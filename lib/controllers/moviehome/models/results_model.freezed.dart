// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'results_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResultsModel _$ResultsModelFromJson(Map<String, dynamic> json) {
  return _ResultsModel.fromJson(json);
}

/// @nodoc
mixin _$ResultsModel {
  bool get adult => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  num get movieId => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get movieTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "overview")
  String get movieOverview => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String get moviePosterUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  String get releaseDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultsModelCopyWith<ResultsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsModelCopyWith<$Res> {
  factory $ResultsModelCopyWith(
          ResultsModel value, $Res Function(ResultsModel) then) =
      _$ResultsModelCopyWithImpl<$Res, ResultsModel>;
  @useResult
  $Res call(
      {bool adult,
      @JsonKey(name: "backdrop_path") String backdropPath,
      @JsonKey(name: "id") num movieId,
      @JsonKey(name: "title") String movieTitle,
      @JsonKey(name: "overview") String movieOverview,
      @JsonKey(name: "poster_path") String moviePosterUrl,
      @JsonKey(name: "release_date") String releaseDate});
}

/// @nodoc
class _$ResultsModelCopyWithImpl<$Res, $Val extends ResultsModel>
    implements $ResultsModelCopyWith<$Res> {
  _$ResultsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? backdropPath = null,
    Object? movieId = null,
    Object? movieTitle = null,
    Object? movieOverview = null,
    Object? moviePosterUrl = null,
    Object? releaseDate = null,
  }) {
    return _then(_value.copyWith(
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdropPath: null == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as num,
      movieTitle: null == movieTitle
          ? _value.movieTitle
          : movieTitle // ignore: cast_nullable_to_non_nullable
              as String,
      movieOverview: null == movieOverview
          ? _value.movieOverview
          : movieOverview // ignore: cast_nullable_to_non_nullable
              as String,
      moviePosterUrl: null == moviePosterUrl
          ? _value.moviePosterUrl
          : moviePosterUrl // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultsModelImplCopyWith<$Res>
    implements $ResultsModelCopyWith<$Res> {
  factory _$$ResultsModelImplCopyWith(
          _$ResultsModelImpl value, $Res Function(_$ResultsModelImpl) then) =
      __$$ResultsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool adult,
      @JsonKey(name: "backdrop_path") String backdropPath,
      @JsonKey(name: "id") num movieId,
      @JsonKey(name: "title") String movieTitle,
      @JsonKey(name: "overview") String movieOverview,
      @JsonKey(name: "poster_path") String moviePosterUrl,
      @JsonKey(name: "release_date") String releaseDate});
}

/// @nodoc
class __$$ResultsModelImplCopyWithImpl<$Res>
    extends _$ResultsModelCopyWithImpl<$Res, _$ResultsModelImpl>
    implements _$$ResultsModelImplCopyWith<$Res> {
  __$$ResultsModelImplCopyWithImpl(
      _$ResultsModelImpl _value, $Res Function(_$ResultsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? backdropPath = null,
    Object? movieId = null,
    Object? movieTitle = null,
    Object? movieOverview = null,
    Object? moviePosterUrl = null,
    Object? releaseDate = null,
  }) {
    return _then(_$ResultsModelImpl(
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdropPath: null == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as num,
      movieTitle: null == movieTitle
          ? _value.movieTitle
          : movieTitle // ignore: cast_nullable_to_non_nullable
              as String,
      movieOverview: null == movieOverview
          ? _value.movieOverview
          : movieOverview // ignore: cast_nullable_to_non_nullable
              as String,
      moviePosterUrl: null == moviePosterUrl
          ? _value.moviePosterUrl
          : moviePosterUrl // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ResultsModelImpl implements _ResultsModel {
  const _$ResultsModelImpl(
      {required this.adult,
      @JsonKey(name: "backdrop_path") required this.backdropPath,
      @JsonKey(name: "id") required this.movieId,
      @JsonKey(name: "title") required this.movieTitle,
      @JsonKey(name: "overview") required this.movieOverview,
      @JsonKey(name: "poster_path") required this.moviePosterUrl,
      @JsonKey(name: "release_date") required this.releaseDate});

  factory _$ResultsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultsModelImplFromJson(json);

  @override
  final bool adult;
  @override
  @JsonKey(name: "backdrop_path")
  final String backdropPath;
  @override
  @JsonKey(name: "id")
  final num movieId;
  @override
  @JsonKey(name: "title")
  final String movieTitle;
  @override
  @JsonKey(name: "overview")
  final String movieOverview;
  @override
  @JsonKey(name: "poster_path")
  final String moviePosterUrl;
  @override
  @JsonKey(name: "release_date")
  final String releaseDate;

  @override
  String toString() {
    return 'ResultsModel(adult: $adult, backdropPath: $backdropPath, movieId: $movieId, movieTitle: $movieTitle, movieOverview: $movieOverview, moviePosterUrl: $moviePosterUrl, releaseDate: $releaseDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultsModelImpl &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.movieId, movieId) || other.movieId == movieId) &&
            (identical(other.movieTitle, movieTitle) ||
                other.movieTitle == movieTitle) &&
            (identical(other.movieOverview, movieOverview) ||
                other.movieOverview == movieOverview) &&
            (identical(other.moviePosterUrl, moviePosterUrl) ||
                other.moviePosterUrl == moviePosterUrl) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, adult, backdropPath, movieId,
      movieTitle, movieOverview, moviePosterUrl, releaseDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultsModelImplCopyWith<_$ResultsModelImpl> get copyWith =>
      __$$ResultsModelImplCopyWithImpl<_$ResultsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultsModelImplToJson(
      this,
    );
  }
}

abstract class _ResultsModel implements ResultsModel {
  const factory _ResultsModel(
          {required final bool adult,
          @JsonKey(name: "backdrop_path") required final String backdropPath,
          @JsonKey(name: "id") required final num movieId,
          @JsonKey(name: "title") required final String movieTitle,
          @JsonKey(name: "overview") required final String movieOverview,
          @JsonKey(name: "poster_path") required final String moviePosterUrl,
          @JsonKey(name: "release_date") required final String releaseDate}) =
      _$ResultsModelImpl;

  factory _ResultsModel.fromJson(Map<String, dynamic> json) =
      _$ResultsModelImpl.fromJson;

  @override
  bool get adult;
  @override
  @JsonKey(name: "backdrop_path")
  String get backdropPath;
  @override
  @JsonKey(name: "id")
  num get movieId;
  @override
  @JsonKey(name: "title")
  String get movieTitle;
  @override
  @JsonKey(name: "overview")
  String get movieOverview;
  @override
  @JsonKey(name: "poster_path")
  String get moviePosterUrl;
  @override
  @JsonKey(name: "release_date")
  String get releaseDate;
  @override
  @JsonKey(ignore: true)
  _$$ResultsModelImplCopyWith<_$ResultsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
