import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pictureperfect/core/routing/app_router.dart';
import 'package:pictureperfect/core/utils/firebase_authentication_utils.dart';
import 'package:pictureperfect/core/utils/logger_utils.dart';
import 'package:pictureperfect/view/commonui/authenticationui/success_lottie_widget.dart';
import 'package:pictureperfect/view/commonui/custom_button.dart';

@RoutePage()
class OnBoardingScreen extends StatelessWidget{
  final _logger = LoggerUtils();
  final _TAG = "OnBoardingScreen";
  ValueNotifier<bool> _isLoginSuccessful = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: _isLoginSuccessful,
        builder: (BuildContext context, bool value, Widget? child){
          if(value){
            return SuccessLottieWidget(isLogin: true,);
          }
          else{
            return Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/logo_with_tagline.png",
                    width: 300,
                    height: 300,
                  ),
                ),

                Positioned(
                    bottom: 40,
                    child: CustomButton(
                      buttonCaption: "Create an Account",
                      iconData: Icons.account_box,
                      onButtonPress: (){
                        context.router.navigate(const CreateAnAccountRoute());
                      },
                    )
                ),
                Positioned(
                    bottom: 120,
                    child: CustomButton(
                      buttonCaption: "Sign In with Google",
                      iconData: Icons.add,
                      onButtonPress: () async{
                        FirebaseAuthenticationUtils firebaseUtils = FirebaseAuthenticationUtils();
                        await firebaseUtils.initialize().then((User? currentUser) async{
                          _logger.log(TAG: _TAG, message: "User details $currentUser");
                          if(currentUser == null){
                            await firebaseUtils.signInWithGoogle().then((value){
                              _logger.log(TAG: _TAG, message: "User details $value");
                              if(value != null){
                                _isLoginSuccessful.value = true;
                              }
                            });
                          }
                          else{
                            _isLoginSuccessful.value = true;
                          }
                        });
                      },
                    )
                )
              ],
            );
          }
        },
      ),
    );
  }

}