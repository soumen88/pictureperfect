import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pictureperfect/controllers/moviehome/events/movie_home_screen_events.dart';
import 'package:pictureperfect/controllers/moviehome/models/movie_model.dart';
import 'package:pictureperfect/controllers/moviehome/states/movie_home_screen_states.dart';
import 'package:pictureperfect/core/repository/movie_repository.dart';
import 'package:pictureperfect/core/utils/logger_utils.dart';

import '../../core/constants/movies_category_enum.dart';

class MovieHomeScreenBloc extends Bloc<MovieHomeScreenEvents, MovieHomeScreenStates>{
  final _movieRepository = MovieRepository();
  final _logger = LoggerUtils();
  final _TAG = "MovieHomeScreenBloc";
  MovieHomeScreenBloc() : super(const MovieHomeScreenStates.loading()){
    on<MovieHomeScreenEvents>((event, emit) async{
      await event.map(
        initMovieEvent: (event) async => await _initMovieHome(event, emit),
      );
    });
  }

  Future<void> _initMovieHome(InitMovieEvent event, Emitter<MovieHomeScreenStates> emit) async{
    emit(const MovieHomeScreenStates.loading());
    try{
      var response = await Future.wait([
        _movieRepository.hitServerForNowPlayingMovies(event.moviesCategoryEnum),
        _movieRepository.fetchImagesFromFirebase(),
      ]);

      MovieModel movieModel = response[0] as MovieModel;
      List<String> imageUrls = response[1] as List<String>;
      String movieCategory = "";
      switch(event.moviesCategoryEnum){
        case MoviesCategoryEnum.NOW_PLAYING:{
          movieCategory = "Now Playing";
        }
        case MoviesCategoryEnum.TOP_RATED: {
          movieCategory = "Top Rated";
        }
        case MoviesCategoryEnum.UP_COMING: {
          movieCategory = "Up coming";
        }
        case MoviesCategoryEnum.POPULAR: {
          movieCategory = "Popular";
        }
      }
      emit(MovieHomeScreenStates.displayView(movieModel, imageUrls, movieCategory));
    }
    catch(exception){
      _logger.log(TAG: _TAG, message: "Exception in future wait $exception");
    }
  }
  
}