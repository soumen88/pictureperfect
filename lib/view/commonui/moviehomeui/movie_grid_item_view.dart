import 'package:flutter/material.dart';
import 'package:pictureperfect/controllers/moviehome/models/results_model.dart';

class MovieGridItemView extends StatelessWidget{
  String imageBaseUrl = "https://image.tmdb.org/t/p/w500";
  ResultsModel currentResultModel;
  Function(int movieId) onMovieItemClick;
  MovieGridItemView({required this.currentResultModel, required this.onMovieItemClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onMovieItemClick(currentResultModel.movieId.toInt());
      },
      child: Container(
        padding: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            "$imageBaseUrl/${currentResultModel.moviePosterUrl}",
            height: 120,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

}