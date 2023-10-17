import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_details_screen_events.freezed.dart';

@freezed
class MovieDetailsScreenEvents with _$MovieDetailsScreenEvents{
  const factory MovieDetailsScreenEvents.initMovieDetailsEvent(int movieId) = InitMovieDetailsEvent;

}