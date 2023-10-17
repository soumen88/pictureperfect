import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pictureperfect/core/constants/path_constants.dart';

import '../../controllers/authentication/model/sign_up_model.dart';
import '../../view/book_tickets_screen.dart';
import '../../view/movie_details_screen.dart';
import '../../view/movie_home_screen.dart';
import '../../view/otp_validation_screen.dart';
import '../../view/create_an_account_screen.dart';
import '../../view/intro_screen.dart';
import '../../view/on_boarding_screen.dart';
import '../../view/splash_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter{
  @override
  List<AutoRoute> get routes => [
   AutoRoute(
          page: SplashRoute.page,
          path: PathConstants.kSplashPath,
          initial: true
   ),
    AutoRoute(
        page: IntroRoute.page,
        path: PathConstants.kIntroPath
    ),
    AutoRoute(
        page: OnBoardingRoute.page,
        path: PathConstants.kOnBoardingPath
    ),
    AutoRoute(
        page: CreateAnAccountRoute.page,
        path: PathConstants.kCreateAccountPath
    ),
    AutoRoute(
        page: OtpValidationRoute.page,
        path: PathConstants.kCreateAccountPath
    ),
    AutoRoute(
        page: MovieHomeRoute.page,
        path: PathConstants.kMoviePath
    ),
    AutoRoute(
        page: MovieDetailsRoute.page,
        path: PathConstants.kMovieDetailsPath
    ),
   AutoRoute(
       page: BookTicketsRoute.page,
       path: PathConstants.kBookTicketsPath
   ),
  ];
}