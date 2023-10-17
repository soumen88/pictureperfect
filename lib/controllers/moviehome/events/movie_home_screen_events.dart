import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pictureperfect/core/constants/movies_category_enum.dart';

part 'movie_home_screen_events.freezed.dart';

@freezed
class MovieHomeScreenEvents with _$MovieHomeScreenEvents{
  const factory MovieHomeScreenEvents.initMovieEvent(MoviesCategoryEnum moviesCategoryEnum) = InitMovieEvent;

}