import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_screen_states.freezed.dart';

@freezed
class SplashScreenStates with _$SplashScreenStates{
  const factory SplashScreenStates.displayView() = _DisplaySplashScreen;
  const factory SplashScreenStates.loading() = _DisplayLoading;
  const factory SplashScreenStates.startNextScreen(bool isLogin) = _StartNextScreen;
}