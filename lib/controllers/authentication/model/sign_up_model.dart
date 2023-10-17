import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_model.freezed.dart';
part 'sign_up_model.g.dart';

@freezed
class SignUpModel with _$SignUpModel{
  @JsonSerializable(explicitToJson : true)
  const factory SignUpModel({
    required String userName,
    required String userEmail,
    required String userPassword,
    required String userPhoneNumber,
  }) = _SignUpModel;

  factory SignUpModel.fromJson(Map<String, dynamic> jsonMap) => _$SignUpModelFromJson(jsonMap);
}