import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:pictureperfect/controllers/authentication/create_an_account_screen_bloc.dart';
import 'package:pictureperfect/controllers/authentication/events/create_an_account_screen_events.dart';
import 'package:pictureperfect/controllers/authentication/states/create_an_account_screen_states.dart';
import 'package:pictureperfect/core/constants/color_constants.dart';
import 'package:pictureperfect/view/commonui/authenticationui/sign_in_widget.dart';
import 'package:pictureperfect/view/commonui/authenticationui/success_lottie_widget.dart';
import 'package:pictureperfect/view/commonui/custom_loader.dart';
import 'package:pictureperfect/view/commonui/empty_widget.dart';

import 'commonui/authenticationui/sign_up_widget.dart';


@RoutePage()
class CreateAnAccountScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => CreateAnAccountScreenBloc()..add(const CreateAnAccountScreenEvents.initAuthEvent()),
        child: BlocConsumer<CreateAnAccountScreenBloc, CreateAnAccountScreenStates>(
          listener: (BuildContext context, CreateAnAccountScreenStates state){

          },
          builder: (BuildContext context, CreateAnAccountScreenStates state){
            return state.maybeWhen(
                displayView: (){
                  return DefaultTabController(
                      length: 2,
                      child: Scaffold(
                        appBar: AppBar(
                          title: const Text("Create and Account"),
                          backgroundColor: ColorConstants.kDarkRed,
                          bottom: getTabItems(),
                        ),
                        body: TabBarView(
                          children: [
                            SignInWidget(),
                            SignUpWidget(),
                          ],
                        ),
                      )
                  );
                },
                loading: (){
                  return CustomLoader();
                },
                startNextScreen: (bool isSuccess){
                  return SuccessLottieWidget(isLogin: true,);
                },
                orElse: (){
                  return EmptyWidget();
                }
            );
          },
        ),
    );
  }

  TabBar getTabItems(){
    return const TabBar(
        tabs: [
          Tab(child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.person),
              Text("Sign In"),
            ],
          ),),
          Tab(child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.upcoming),
              Text("Sign Up"),
            ],
          ),),
        ]
    );
  }

}