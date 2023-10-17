import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pictureperfect/controllers/moviedetails/events/movie_details_screen_events.dart';
import 'package:pictureperfect/controllers/moviedetails/models/movie_details_model.dart';
import 'package:pictureperfect/controllers/moviedetails/states/movie_details_screen_states.dart';

import '../../core/repository/movie_repository.dart';
import '../../core/utils/logger_utils.dart';

class MovieDetailsScreenBloc extends Bloc<MovieDetailsScreenEvents, MovieDetailsScreenStates> {
  final _movieRepository = MovieRepository();
  final _logger = LoggerUtils();
  final _TAG = "MovieDetailsScreenBloc";

  MovieDetailsScreenBloc() : super(const MovieDetailsScreenStates.loading()) {
    on<MovieDetailsScreenEvents>((event, emit) async {
      await event.map(
        initMovieDetailsEvent: (event) async => await _initMovieDetails(event, emit),
      );
    });
  }

  Future<void> _initMovieDetails(InitMovieDetailsEvent event, Emitter<MovieDetailsScreenStates> emit) async{
    emit(const MovieDetailsScreenStates.loading());

    await _movieRepository.hitServerToGetMovieDetails(event.movieId).then((MovieDetailsModel movieDetailsModel){
      _logger.log(TAG: _TAG, message: "Movie Details Received $movieDetailsModel");
      emit(MovieDetailsScreenStates.displayView(movieDetailsModel));
    });
  }
}