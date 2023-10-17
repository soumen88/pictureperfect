import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pictureperfect/controllers/moviehome/events/movie_home_screen_events.dart';
import 'package:pictureperfect/controllers/moviehome/models/results_model.dart';
import 'package:pictureperfect/controllers/moviehome/movie_home_screen_bloc.dart';
import 'package:pictureperfect/controllers/moviehome/states/movie_home_screen_states.dart';
import 'package:pictureperfect/core/constants/color_constants.dart';
import 'package:pictureperfect/core/constants/movies_category_enum.dart';
import 'package:pictureperfect/core/repository/movie_repository.dart';
import 'package:pictureperfect/core/routing/app_router.dart';
import 'package:pictureperfect/view/commonui/custom_app_bar.dart';
import 'package:pictureperfect/view/commonui/custom_loader.dart';
import 'package:pictureperfect/view/commonui/empty_widget.dart';
import 'package:pictureperfect/view/commonui/moviehomeui/movie_grid_item_view.dart';

import '../controllers/moviehome/models/movie_model.dart';

@RoutePage()
class MovieHomeScreen extends StatelessWidget{

  CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => MovieHomeScreenBloc()..add(MovieHomeScreenEvents.initMovieEvent(MoviesCategoryEnum.POPULAR)),
        child: BlocConsumer<MovieHomeScreenBloc, MovieHomeScreenStates>(
          listener: (BuildContext context, MovieHomeScreenStates state){

          },
          builder: (BuildContext context, MovieHomeScreenStates state){
            return state.maybeWhen(
                displayView: (MovieModel movieModel, List<String> imageUrls, String moviesCategoryEnum){
                  return Scaffold(
                    appBar: CustomAppBar(
                      isActionRequired: true,
                      onMovieCategorySelected: (MoviesCategoryEnum movieCategoryEnum){
                        BlocProvider.of<MovieHomeScreenBloc>(context).add(MovieHomeScreenEvents.initMovieEvent(movieCategoryEnum));
                      },
                    ),
                    body: Column(
                      children: [
                        CarouselSlider.builder(
                            itemCount: imageUrls.length,
                            itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex){
                              String imageUrl = imageUrls[itemIndex];
                              return Image.network(imageUrl);
                            },
                            options: CarouselOptions(
                              height: 280,
                              aspectRatio: 16/9,
                              viewportFraction: 0.8,
                              initialPage: 0,
                              enableInfiniteScroll: true,
                              reverse: false,
                              autoPlay: true,
                              autoPlayInterval: Duration(seconds: 3),
                              autoPlayAnimationDuration: Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,
                              enlargeFactor: 0.3,
                              scrollDirection: Axis.horizontal,
                            )
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: imageUrls.asMap().entries.map((e){
                            return Container(
                              height: 4,
                              width: 20,
                              margin: EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                color: ColorConstants.kOrange
                              ),
                            );
                          }).toList(),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          moviesCategoryEnum,
                          style: const TextStyle(
                            fontSize: 18,
                            color: ColorConstants.kOrange
                          ),
                        ),
                        Expanded(
                            child: GridView.builder(
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2
                                ),
                                itemCount: movieModel.results.length,
                                itemBuilder: (BuildContext context, int index){
                                  ResultsModel currentResultModel = movieModel.results[index];
                                  return MovieGridItemView(
                                      currentResultModel: currentResultModel,
                                      onMovieItemClick: (int movieId){
                                          context.router.navigate(MovieDetailsRoute(movieId: movieId));
                                      },
                                  );
                                }
                            )
                        )
                      ],
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