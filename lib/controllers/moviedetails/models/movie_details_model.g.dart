// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieDetailsModelImpl _$$MovieDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MovieDetailsModelImpl(
      adult: json['adult'] as bool,
      backgroundImageUrl: json['backdrop_path'] as String,
      movieId: json['id'] as int,
      title: json['title'] as String,
      movieDescription: json['overview'] as String,
      posterUrl: json['poster_path'] as String,
    );

Map<String, dynamic> _$$MovieDetailsModelImplToJson(
        _$MovieDetailsModelImpl instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backgroundImageUrl,
      'id': instance.movieId,
      'title': instance.title,
      'overview': instance.movieDescription,
      'poster_path': instance.posterUrl,
    };
