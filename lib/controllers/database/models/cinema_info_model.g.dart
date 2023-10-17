// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cinema_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CinemaInfoModelImpl _$$CinemaInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CinemaInfoModelImpl(
      id: json['id'] as int,
      cinemaType: json['cinemaType'] as String,
      nameOfTheTheatre: json['nameOfTheTheatre'] as String,
      contactDetails: json['contactDetails'] as String,
      location: json['location'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      areaName: json['areaName'] as String,
    );

Map<String, dynamic> _$$CinemaInfoModelImplToJson(
        _$CinemaInfoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cinemaType': instance.cinemaType,
      'nameOfTheTheatre': instance.nameOfTheTheatre,
      'contactDetails': instance.contactDetails,
      'location': instance.location,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'areaName': instance.areaName,
    };
