import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pictureperfect/controllers/authentication/create_an_account_screen_bloc.dart';
import 'package:pictureperfect/controllers/authentication/events/create_an_account_screen_events.dart';
import 'package:pictureperfect/controllers/authentication/model/sign_up_model.dart';
import 'package:pictureperfect/core/constants/app_constants.dart';
import 'package:pictureperfect/core/routing/app_router.dart';
import 'package:pictureperfect/view/commonui/custom_button.dart';
import 'package:pictureperfect/view/commonui/authenticationui/input_field_widget.dart';

class SignUpWidget extends StatelessWidget{
  TextEditingController _nameController = TextEditingController(text: "Test name");
  TextEditingController _emailController = TextEditingController(text: "abc@g.com");
  TextEditingController _passwordController = TextEditingController(text: "Abcdefas@123");
  TextEditingController _phoneController1 = TextEditingController(text: "1234");
  TextEditingController _phoneController2 = TextEditingController(text: "567");
  TextEditingController _phoneController3 = TextEditingController(text: "899");
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign Up to ${AppConstants.kAppName} and get amazing offers",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              InputFieldWidget(
                keyBoardType: TextInputType.name,
                hintText: "Enter name",
                inputController: _nameController,
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
              const SizedBox(
                height: 10,
              ),
              const Text("Enter phone number (in format 1234 567 899)"),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100,
                    child: InputFieldWidget(
                      keyBoardType: TextInputType.number,
                      hintText: "1234",
                      inputController: _phoneController1,
                      maxLength: 4,
                    ),
                  ),
                  Container(
                    width: 100,
                    child: InputFieldWidget(
                      keyBoardType: TextInputType.number,
                      hintText: "567",
                      inputController: _phoneController2,
                      maxLength: 3,
                    ),
                  ),
                  Container(
                    width: 100,
                    child: InputFieldWidget(
                      keyBoardType: TextInputType.number,
                      hintText: "899",
                      inputController: _phoneController3,
                      maxLength: 3,
                    ),
                  ),
                ],
              ),
              CustomButton(
                buttonCaption: "Sign Up",
                iconData: Icons.arrow_right_alt,
                onButtonPress: () async{
                  if(_formKey.currentState != null && _formKey.currentState!.validate()){
                    String phoneNumber = "+91 " + _phoneController1.text + " " + _phoneController2.text + " "+ _phoneController3.text;

                    SignUpModel signUpModel = SignUpModel(
                        userName: _nameController.text,
                        userEmail: _emailController.text,
                        userPassword: _passwordController.text,
                        userPhoneNumber: phoneNumber
                    );
                    BlocProvider.of<CreateAnAccountScreenBloc>(context).add(CreateAnAccountScreenEvents.validatePhoneEvent(phoneNumber));
                     await context.router.navigate(OtpValidationRoute(phoneNumber: phoneNumber, signUpModel : signUpModel)).then((value){
                       BlocProvider.of<CreateAnAccountScreenBloc>(context).add(CreateAnAccountScreenEvents.signUpEvent(signUpModel));
                     });
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }

}