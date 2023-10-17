import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pictureperfect/controllers/moviehome/models/movie_model.dart';
import 'package:pictureperfect/core/constants/movies_category_enum.dart';

part 'movie_home_screen_states.freezed.dart';

@freezed
class MovieHomeScreenStates with _$MovieHomeScreenStates{
  const factory MovieHomeScreenStates.displayView(MovieModel movieModel, List<String> imageUrls, String moviesCategory) = _DisplayMoviesList;
  const factory MovieHomeScreenStates.loading() = _DisplayMovieLoading;
}