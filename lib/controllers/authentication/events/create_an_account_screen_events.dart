import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pictureperfect/controllers/authentication/model/sign_in_model.dart';
import 'package:pictureperfect/controllers/authentication/model/sign_up_model.dart';

part 'create_an_account_screen_events.freezed.dart';

@freezed
class CreateAnAccountScreenEvents with _$CreateAnAccountScreenEvents{
  const factory CreateAnAccountScreenEvents.initAuthEvent() = InitAuthEvent;
  const factory CreateAnAccountScreenEvents.signUpEvent(SignUpModel signUpModel) = SignUpEvent;
  const factory CreateAnAccountScreenEvents.validatePhoneEvent(String phoneNumber) = ValidatePhoneEvent;
  const factory CreateAnAccountScreenEvents.validateOTPEvent(String otpNumber) = ValidateOtpEvent;
  const factory CreateAnAccountScreenEvents.signInEvent(SignInModel signInModel) = SignInEvent;

}