// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmailModelImpl _$$EmailModelImplFromJson(Map<String, dynamic> json) =>
    _$EmailModelImpl(
      to: json['to'] as String,
      subject: json['subject'] as String,
      html: json['html'] as String,
      company: json['company'] as String,
      sendername: json['sendername'] as String,
    );

Map<String, dynamic> _$$EmailModelImplToJson(_$EmailModelImpl instance) =>
    <String, dynamic>{
      'to': instance.to,
      'subject': instance.subject,
      'html': instance.html,
      'company': instance.company,
      'sendername': instance.sendername,
    };
