import 'package:freezed_annotation/freezed_annotation.dart';

part 'results_model.freezed.dart';
part 'results_model.g.dart';

@freezed
class ResultsModel with _$ResultsModel{
  @JsonSerializable(explicitToJson : true)
  const factory ResultsModel({
    required bool adult,
    @JsonKey(name: "backdrop_path")
    required String backdropPath,
    @JsonKey(name: "id")
    required num movieId,
    @JsonKey(name: "title")
    required String movieTitle,
    @JsonKey(name: "overview")
    required String movieOverview,
    @JsonKey(name: "poster_path")
    required String moviePosterUrl,
    @JsonKey(name: "release_date")
    required String releaseDate,


  }) = _ResultsModel;

  factory ResultsModel.fromJson(Map<String, dynamic> jsonMap) => _$ResultsModelFromJson(jsonMap);
}