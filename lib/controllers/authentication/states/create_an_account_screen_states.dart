import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_an_account_screen_states.freezed.dart';

@freezed
class CreateAnAccountScreenStates with _$CreateAnAccountScreenStates{
  const factory CreateAnAccountScreenStates.displayView() = _CreateAnAccountScreenStates;
  const factory CreateAnAccountScreenStates.loading() = _DisplayLoading;
  const factory CreateAnAccountScreenStates.startNextScreen(bool isSucess) = _StartNextScreen;
}