import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pictureperfect/core/routing/app_router.dart';
import 'package:pictureperfect/view/commonui/custom_app_bar.dart';
import 'package:pictureperfect/view/commonui/custom_button.dart';

class SuccessLottieWidget extends StatelessWidget{
  bool isLogin;

  SuccessLottieWidget({required this.isLogin});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Lottie.asset(
            "assets/animations/success_animation.json",
            width: 250,
            height: 250
        ),
      ),
      bottomNavigationBar: CustomButton(
          buttonCaption: "Go to Home",
          iconData: Icons.home,
          onButtonPress: (){
            if(isLogin){
              context.router.replace(const MovieHomeRoute());
            }
            else{
              context.router.popUntilRoot();
            }
          },
      ),
    );
  }

}