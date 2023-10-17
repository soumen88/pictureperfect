import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pictureperfect/controllers/moviehome/models/results_model.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
class MovieModel with _$MovieModel{
  @JsonSerializable(explicitToJson : true)
  const factory MovieModel({
    required int page,
    required List<ResultsModel> results,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> jsonMap) => _$MovieModelFromJson(jsonMap);
}