import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_model.freezed.dart';
part 'sign_in_model.g.dart';

@freezed
class SignInModel with _$SignInModel{
  @JsonSerializable(explicitToJson : true)
  const factory SignInModel({

    required String userEmail,
    required String userPassword,
  }) = _SignInModel;

  factory SignInModel.fromJson(Map<String, dynamic> jsonMap) => _$SignInModelFromJson(jsonMap);
}