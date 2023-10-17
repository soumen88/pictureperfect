// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    BookTicketsRoute.name: (routeData) {
      final args = routeData.argsAs<BookTicketsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BookTicketsScreen(noOfTickets: args.noOfTickets),
      );
    },
    CreateAnAccountRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CreateAnAccountScreen(),
      );
    },
    IntroRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: IntroScreen(),
      );
    },
    MovieDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<MovieDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MovieDetailsScreen(movieId: args.movieId),
      );
    },
    MovieHomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MovieHomeScreen(),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OnBoardingScreen(),
      );
    },
    OtpValidationRoute.name: (routeData) {
      final args = routeData.argsAs<OtpValidationRouteArgs>(
          orElse: () => const OtpValidationRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OtpValidationScreen(
          key: args.key,
          phoneNumber: args.phoneNumber,
          signUpModel: args.signUpModel,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [BookTicketsScreen]
class BookTicketsRoute extends PageRouteInfo<BookTicketsRouteArgs> {
  BookTicketsRoute({
    required int noOfTickets,
    List<PageRouteInfo>? children,
  }) : super(
          BookTicketsRoute.name,
          args: BookTicketsRouteArgs(noOfTickets: noOfTickets),
          initialChildren: children,
        );

  static const String name = 'BookTicketsRoute';

  static const PageInfo<BookTicketsRouteArgs> page =
      PageInfo<BookTicketsRouteArgs>(name);
}

class BookTicketsRouteArgs {
  const BookTicketsRouteArgs({required this.noOfTickets});

  final int noOfTickets;

  @override
  String toString() {
    return 'BookTicketsRouteArgs{noOfTickets: $noOfTickets}';
  }
}

/// generated route for
/// [CreateAnAccountScreen]
class CreateAnAccountRoute extends PageRouteInfo<void> {
  const CreateAnAccountRoute({List<PageRouteInfo>? children})
      : super(
          CreateAnAccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateAnAccountRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [IntroScreen]
class IntroRoute extends PageRouteInfo<void> {
  const IntroRoute({List<PageRouteInfo>? children})
      : super(
          IntroRoute.name,
          initialChildren: children,
        );

  static const String name = 'IntroRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MovieDetailsScreen]
class MovieDetailsRoute extends PageRouteInfo<MovieDetailsRouteArgs> {
  MovieDetailsRoute({
    required int movieId,
    List<PageRouteInfo>? children,
  }) : super(
          MovieDetailsRoute.name,
          args: MovieDetailsRouteArgs(movieId: movieId),
          initialChildren: children,
        );

  static const String name = 'MovieDetailsRoute';

  static const PageInfo<MovieDetailsRouteArgs> page =
      PageInfo<MovieDetailsRouteArgs>(name);
}

class MovieDetailsRouteArgs {
  const MovieDetailsRouteArgs({required this.movieId});

  final int movieId;

  @override
  String toString() {
    return 'MovieDetailsRouteArgs{movieId: $movieId}';
  }
}

/// generated route for
/// [MovieHomeScreen]
class MovieHomeRoute extends PageRouteInfo<void> {
  const MovieHomeRoute({List<PageRouteInfo>? children})
      : super(
          MovieHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'MovieHomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnBoardingScreen]
class OnBoardingRoute extends PageRouteInfo<void> {
  const OnBoardingRoute({List<PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OtpValidationScreen]
class OtpValidationRoute extends PageRouteInfo<OtpValidationRouteArgs> {
  OtpValidationRoute({
    Key? key,
    String? phoneNumber,
    SignUpModel? signUpModel,
    List<PageRouteInfo>? children,
  }) : super(
          OtpValidationRoute.name,
          args: OtpValidationRouteArgs(
            key: key,
            phoneNumber: phoneNumber,
            signUpModel: signUpModel,
          ),
          initialChildren: children,
        );

  static const String name = 'OtpValidationRoute';

  static const PageInfo<OtpValidationRouteArgs> page =
      PageInfo<OtpValidationRouteArgs>(name);
}

class OtpValidationRouteArgs {
  const OtpValidationRouteArgs({
    this.key,
    this.phoneNumber,
    this.signUpModel,
  });

  final Key? key;

  final String? phoneNumber;

  final SignUpModel? signUpModel;

  @override
  String toString() {
    return 'OtpValidationRouteArgs{key: $key, phoneNumber: $phoneNumber, signUpModel: $signUpModel}';
  }
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
