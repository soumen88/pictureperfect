import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pictureperfect/controllers/splash/splash_bloc.dart';
import 'package:pictureperfect/controllers/splash/states/splash_screen_states.dart';
import 'package:pictureperfect/core/routing/app_router.dart';
import 'package:pictureperfect/view/commonui/empty_widget.dart';


import '../controllers/splash/events/splash_screen_events.dart';

@RoutePage()
class SplashScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context){
          return SplashBloc()..add(const SplashScreenEvents.initEvent());
        },
        child: BlocConsumer<SplashBloc, SplashScreenStates>(
          listener: (BuildContext context, SplashScreenStates state){
            state.whenOrNull(
              startNextScreen: (bool isLogin){

                if(isLogin){
                  context.router.replace(const MovieHomeRoute());
                }
                else{
                  context.router.replace(const IntroRoute());
                }

              }
            );
          },
          builder: (BuildContext context, SplashScreenStates state){
            return state.maybeWhen(
                displayView: (){
                  return Scaffold(
                    body: Center(
                      child: Image.asset(
                        "assets/images/logo_with_tagline.png",
                        width: 300,
                        height: 300,
                      ),
                    ),
                  );
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