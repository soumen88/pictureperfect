import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pictureperfect/controllers/authentication/events/create_an_account_screen_events.dart';
import 'package:pictureperfect/controllers/authentication/states/create_an_account_screen_states.dart';
import 'package:pictureperfect/core/utils/firebase_authentication_utils.dart';

import '../../core/utils/logger_utils.dart';

class CreateAnAccountScreenBloc extends Bloc<CreateAnAccountScreenEvents, CreateAnAccountScreenStates>{

  final FirebaseAuthenticationUtils _firebaseAuthentionUtils = FirebaseAuthenticationUtils();
  final _logger = LoggerUtils();
  final _TAG =  "CreateAnAccountScreenBloc";

  CreateAnAccountScreenBloc() : super(const CreateAnAccountScreenStates.displayView()){
    on<CreateAnAccountScreenEvents>((event, emit) async{
      await event.map(
          initAuthEvent: (event) async => await _init(event, emit),
          signUpEvent: (event) async => await _signUp(event, emit),
          validatePhoneEvent: (event) async => await _validatePhone(event, emit),
          validateOTPEvent: (event) async => await _validateOtp(event, emit),
          signInEvent: (event) async => await _signIn(event, emit),
      );
    });
  }

  Future<void> _init(InitAuthEvent event, Emitter<CreateAnAccountScreenStates> emit) async{
    emit(const CreateAnAccountScreenStates.displayView());
  }

  Future<void> _signUp(SignUpEvent event, Emitter<CreateAnAccountScreenStates> emit) async{
    emit(CreateAnAccountScreenStates.loading());
    await _firebaseAuthentionUtils.signUpUser(event.signUpModel).then((User? userDetails) async{
      if(userDetails != null){
        emit(CreateAnAccountScreenStates.startNextScreen(true));
        await Future.delayed(Duration(seconds: 5), (){
          add(CreateAnAccountScreenEvents.initAuthEvent());
        });
      }
    });
  }

  Future<void> _signIn(SignInEvent event, Emitter<CreateAnAccountScreenStates> emit) async{
      emit(CreateAnAccountScreenStates.loading());
      await _firebaseAuthentionUtils.signInUser(event.signInModel).then((User? currentUser){
        if(currentUser != null){
          emit(CreateAnAccountScreenStates.startNextScreen(true));
        }
      });
  }

  Future<void> _validatePhone(ValidatePhoneEvent event, Emitter<CreateAnAccountScreenStates> emit) async{
    _logger.log(TAG: _TAG, message: "Proceeding for phone number validation with phone ${event.phoneNumber}");
    await _firebaseAuthentionUtils.validatePhoneNumber(event.phoneNumber);
  }

  Future<void> _validateOtp(ValidateOtpEvent event, Emitter<CreateAnAccountScreenStates> emit) async{

  }
}