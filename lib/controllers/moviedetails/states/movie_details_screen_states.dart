import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pictureperfect/controllers/moviedetails/models/movie_details_model.dart';

part 'movie_details_screen_states.freezed.dart';

@freezed
class MovieDetailsScreenStates with _$MovieDetailsScreenStates{
  const factory MovieDetailsScreenStates.displayView(MovieDetailsModel movieDetailsModel) = _DisplayMoviesDetails;
  const factory MovieDetailsScreenStates.loading() = _DisplayMovieDetailsLoading;
  const factory MovieDetailsScreenStates.startNextScreen() = _StartNextScreen;
}