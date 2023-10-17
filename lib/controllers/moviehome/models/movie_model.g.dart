// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieModelImpl _$$MovieModelImplFromJson(Map<String, dynamic> json) =>
    _$MovieModelImpl(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => ResultsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MovieModelImplToJson(_$MovieModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results.map((e) => e.toJson()).toList(),
    };
