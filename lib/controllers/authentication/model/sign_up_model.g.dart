// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpModelImpl _$$SignUpModelImplFromJson(Map<String, dynamic> json) =>
    _$SignUpModelImpl(
      userName: json['userName'] as String,
      userEmail: json['userEmail'] as String,
      userPassword: json['userPassword'] as String,
      userPhoneNumber: json['userPhoneNumber'] as String,
    );

Map<String, dynamic> _$$SignUpModelImplToJson(_$SignUpModelImpl instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'userEmail': instance.userEmail,
      'userPassword': instance.userPassword,
      'userPhoneNumber': instance.userPhoneNumber,
    };
