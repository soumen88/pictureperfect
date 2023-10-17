import 'package:flutter/material.dart';
import 'package:pictureperfect/core/constants/color_constants.dart';
import 'package:pictureperfect/core/extensions.dart';

class InputFieldWidget extends StatelessWidget{
  TextInputType keyBoardType;
  String hintText;
  TextEditingController inputController;
  bool isPassword;
  int maxLength;
  InputFieldWidget({
    required this.keyBoardType,
    required this.hintText,
    required this.inputController,
    this.isPassword = false,
    this.maxLength = 100,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: inputController,
      maxLength: maxLength,
      obscureText: isPassword,
      keyboardType: keyBoardType,
      decoration: InputDecoration(
        fillColor: ColorConstants.kLightOrange,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: ColorConstants.kDarkRed,
          )
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: ColorConstants.kDarkRed,
            )
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: ColorConstants.kDarkRed,
            )
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: ColorConstants.kDarkRed,
            )
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.black38
        ),
      ),
      validator: (String? input){
        if(input != null && input.isNotEmpty){
          if(keyBoardType == TextInputType.emailAddress){
              if(input.isValidEmail()){
                return null;
              }
              else{
                return "Enter valid email";
              }
          }
          else if(isPassword){
              if(input.isPasswordValid()){
                return null;
              }
              else{
                return "Enter valid password";
              }
          }
          return null;
        }
        else{
          return "Enter valid input";
        }
      },
    );
  }

}