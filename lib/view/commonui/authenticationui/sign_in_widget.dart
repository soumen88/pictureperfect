import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pictureperfect/controllers/authentication/create_an_account_screen_bloc.dart';
import 'package:pictureperfect/controllers/authentication/events/create_an_account_screen_events.dart';
import 'package:pictureperfect/controllers/authentication/model/sign_in_model.dart';
import 'package:pictureperfect/core/constants/app_constants.dart';
import 'package:pictureperfect/view/commonui/custom_button.dart';
import 'package:pictureperfect/view/commonui/authenticationui/input_field_widget.dart';

class SignInWidget extends StatelessWidget{
  TextEditingController _emailController = TextEditingController(text: "abc@g.com");
  TextEditingController _passwordController = TextEditingController(text: "Abcdefas@123");
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Sign in to ${AppConstants.kAppName}",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InputFieldWidget(
                keyBoardType: TextInputType.emailAddress,
                hintText: "Enter Email",
                inputController: _emailController,
            ),
            const SizedBox(
              height: 10,
            ),
            InputFieldWidget(
                keyBoardType: TextInputType.text,
                hintText: "Enter Password",
                inputController: _passwordController,
                isPassword: true,
            ),
            CustomButton(
                buttonCaption: "Sign In",
                iconData: Icons.arrow_right_alt,
                onButtonPress: (){
                  if(_formKey.currentState != null && _formKey.currentState!.validate()){
                      SignInModel signInModel = SignInModel(
                          userEmail: _emailController.text,
                          userPassword: _passwordController.text
                      );
                      BlocProvider.of<CreateAnAccountScreenBloc>(context).add(CreateAnAccountScreenEvents.signInEvent(signInModel));
                  }
                },
            )
          ],
        ),
      ),
    );
  }

}