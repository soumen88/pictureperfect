import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_screen_events.freezed.dart';

@freezed
class SplashScreenEvents with _$SplashScreenEvents{
  const factory SplashScreenEvents.initEvent() = InitSplashEvent;
}