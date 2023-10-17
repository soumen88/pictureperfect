// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'results_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResultsModelImpl _$$ResultsModelImplFromJson(Map<String, dynamic> json) =>
    _$ResultsModelImpl(
      adult: json['adult'] as bool,
      backdropPath: json['backdrop_path'] as String,
      movieId: json['id'] as num,
      movieTitle: json['title'] as String,
      movieOverview: json['overview'] as String,
      moviePosterUrl: json['poster_path'] as String,
      releaseDate: json['release_date'] as String,
    );

Map<String, dynamic> _$$ResultsModelImplToJson(_$ResultsModelImpl instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'id': instance.movieId,
      'title': instance.movieTitle,
      'overview': instance.movieOverview,
      'poster_path': instance.moviePosterUrl,
      'release_date': instance.releaseDate,
    };
