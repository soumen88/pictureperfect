import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_details_model.freezed.dart';
part 'movie_details_model.g.dart';

@freezed
class MovieDetailsModel with _$MovieDetailsModel{
  @JsonSerializable(explicitToJson : true)
  const factory MovieDetailsModel({
    required bool adult,
    @JsonKey(name: "backdrop_path")
    required String backgroundImageUrl,
    @JsonKey(name: "id")
    required int movieId,
    required String title,
    @JsonKey(name: "overview")
    required String movieDescription,
    @JsonKey(name: "poster_path")
    required String posterUrl,
  }) = _MovieDetailsModel;

  factory MovieDetailsModel.fromJson(Map<String, dynamic> jsonMap) => _$MovieDetailsModelFromJson(jsonMap);
}