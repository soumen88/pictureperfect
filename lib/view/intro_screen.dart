import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:pictureperfect/core/constants/color_constants.dart';
import 'package:pictureperfect/core/routing/app_router.dart';
import 'package:pictureperfect/view/commonui/empty_widget.dart';

@RoutePage()
class IntroScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            titleWidget: EmptyWidget(),
            bodyWidget: EmptyWidget(),
            image: _buildImage("assets/images/1.png"),
            decoration: getPageDecoration()
          ),
          PageViewModel(
            titleWidget: EmptyWidget(),
            bodyWidget: EmptyWidget(),
            image: _buildImage("assets/images/2.png"),
            decoration: getPageDecoration()
          ),
          PageViewModel(
            titleWidget: EmptyWidget(),
            bodyWidget: EmptyWidget(),
            image: _buildImage("assets/images/3.png"),
            decoration: getPageDecoration()
          ),
        ],
        onDone: (){
            context.router.replace(const OnBoardingRoute());
        },
        onSkip: (){
          context.router.replace(const OnBoardingRoute());
        },
        showDoneButton: true,
        showSkipButton: true,
        showNextButton: true,
        skip: Text(
          "Skip",
          style: TextStyle(
            color: ColorConstants.kDarkRed
          ),
        ),
        done: Text(
          "Done",
          style: TextStyle(
            color: ColorConstants.kDarkRed
          ),
        ),
        next: Icon(
          Icons.forward,
          color: ColorConstants.kIndigoColor,
        ),
        dotsDecorator: getDotsDecoration(),
      ),
    );
  }

  Widget _buildImage(String imagePath){
    return Center(
      child: Image.asset(imagePath),
    );
  }

  PageDecoration getPageDecoration(){
    return const PageDecoration(
      imagePadding: EdgeInsets.only(top: 20),
      pageColor: ColorConstants.kOrange,
      fullScreen: true
    );
  }

  ///Displaying dots below the image
  DotsDecorator getDotsDecoration(){
    return const DotsDecorator(
      spacing: EdgeInsets.symmetric(horizontal: 5),
      activeColor: ColorConstants.kIndigoColor,
      color: Colors.grey,
      activeSize: Size(12, 5),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4))
      )
    );
  }
}