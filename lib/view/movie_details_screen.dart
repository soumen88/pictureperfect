import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pictureperfect/controllers/moviedetails/events/movie_details_screen_events.dart';
import 'package:pictureperfect/controllers/moviedetails/models/movie_details_model.dart';
import 'package:pictureperfect/controllers/moviedetails/movie_details_screen_bloc.dart';
import 'package:pictureperfect/controllers/moviedetails/states/movie_details_screen_states.dart';
import 'package:pictureperfect/controllers/moviehome/movie_home_screen_bloc.dart';
import 'package:pictureperfect/core/constants/color_constants.dart';
import 'package:pictureperfect/view/commonui/authenticationui/input_field_widget.dart';
import 'package:pictureperfect/view/commonui/counter_widget.dart';
import 'package:pictureperfect/view/commonui/custom_app_bar.dart';
import 'package:pictureperfect/view/commonui/custom_button.dart';
import 'package:pictureperfect/view/commonui/custom_loader.dart';
import 'package:pictureperfect/view/commonui/empty_widget.dart';

@RoutePage()
class MovieDetailsScreen extends StatelessWidget{
  int movieId;
  String imageBaseUrl = "https://image.tmdb.org/t/p/w500";
  MovieDetailsScreen({required this.movieId});
  TextEditingController ticketsNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => MovieDetailsScreenBloc()..add(MovieDetailsScreenEvents.initMovieDetailsEvent(movieId)),
        child: BlocConsumer<MovieDetailsScreenBloc, MovieDetailsScreenStates>(
          listener: (BuildContext context, MovieDetailsScreenStates state){

          },
          builder: (BuildContext context, MovieDetailsScreenStates state){

            return state.maybeWhen(
                displayView: (MovieDetailsModel movieDetailsModel){
                  return Scaffold(
                    appBar: CustomAppBar(),
                    body: SingleChildScrollView(
                      child: Column(
                        children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black
                              ),
                              child: Stack(
                                children: [
                                  Image.network("$imageBaseUrl/${movieDetailsModel.backgroundImageUrl}"),
                                  movieDetailsModel.adult ?
                                  Positioned(
                                      bottom: 30,
                                      right: 30,
                                      child: CircleAvatar(
                                        minRadius: 20,
                                        backgroundColor: ColorConstants.kLightOrange,
                                        child: Text(
                                            "A",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20
                                            ),
                                        ),
                                      )
                                  ) : EmptyWidget()
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20  ,
                                  ),
                                  Text(
                                      movieDetailsModel.title,
                                      style: const TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: ColorConstants.kDarkRed
                                      ),
                                      textAlign: TextAlign.center,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      movieDetailsModel.movieDescription,
                                      style: const TextStyle(
                                          fontSize: 20,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                        ],
                      ),
                    ),
                    bottomNavigationBar: Container(
                      height: 100,
                      color: ColorConstants.kDarkRed,
                      child: CounterWidget(),
                    ),
                  );
                },
                loading: (){
                  return CustomLoader();
                },
                orElse: (){
                  return EmptyWidget();
                }
            );

          },
        ),
    );
  }

}