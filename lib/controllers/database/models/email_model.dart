import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_model.freezed.dart';
part 'email_model.g.dart';

@freezed
class EmailModel with _$EmailModel{
  @JsonSerializable(explicitToJson : true)
  const factory EmailModel({
    required String to,
    required String subject,
    required String html,
    required String company,
    required String sendername,

  }) = _EmailModel;

  factory EmailModel.fromJson(Map<String, dynamic> jsonMap) => _$EmailModelFromJson(jsonMap);
}