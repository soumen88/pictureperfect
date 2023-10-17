import 'package:freezed_annotation/freezed_annotation.dart';

part 'cinema_info_model.freezed.dart';
part 'cinema_info_model.g.dart';

@freezed
class CinemaInfoModel with _$CinemaInfoModel{
  @JsonSerializable(explicitToJson : true)
  const factory CinemaInfoModel({
    required int id,
    required String cinemaType,
    required String nameOfTheTheatre,
    required String contactDetails,
    required String location,
    required double latitude,
    required double longitude,
    required String areaName,

  }) = _CinemaInfoModel;

  factory CinemaInfoModel.fromJson(Map<String, dynamic> jsonMap) => _$CinemaInfoModelFromJson(jsonMap);
}