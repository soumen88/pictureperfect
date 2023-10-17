import 'package:flutter/material.dart';
import 'package:pictureperfect/core/constants/app_constants.dart';
import 'package:pictureperfect/core/constants/color_constants.dart';

class CustomButton extends StatelessWidget{

  String buttonCaption;
  IconData iconData;
  VoidCallback? onButtonPress;

  CustomButton({required this.buttonCaption,required this.iconData, this.onButtonPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(onButtonPress != null){
          onButtonPress!();
        }
      },
      child: Container(
        width: MediaQuery.sizeOf(context).width - 60,
        margin: const EdgeInsets.all(20),
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorConstants.kDarkRed
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: ColorConstants.kBackgroundColor,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              buttonCaption,
              style: const TextStyle(
                  color: ColorConstants.kBackgroundColor,
                  fontSize: 20
              ),
            )
          ],
        ),
      ),
    );
  }

}