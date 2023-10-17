// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmailModel _$EmailModelFromJson(Map<String, dynamic> json) {
  return _EmailModel.fromJson(json);
}

/// @nodoc
mixin _$EmailModel {
  String get to => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  String get html => throw _privateConstructorUsedError;
  String get company => throw _privateConstructorUsedError;
  String get sendername => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailModelCopyWith<EmailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailModelCopyWith<$Res> {
  factory $EmailModelCopyWith(
          EmailModel value, $Res Function(EmailModel) then) =
      _$EmailModelCopyWithImpl<$Res, EmailModel>;
  @useResult
  $Res call(
      {String to,
      String subject,
      String html,
      String company,
      String sendername});
}

/// @nodoc
class _$EmailModelCopyWithImpl<$Res, $Val extends EmailModel>
    implements $EmailModelCopyWith<$Res> {
  _$EmailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
    Object? subject = null,
    Object? html = null,
    Object? company = null,
    Object? sendername = null,
  }) {
    return _then(_value.copyWith(
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      html: null == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      sendername: null == sendername
          ? _value.sendername
          : sendername // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmailModelImplCopyWith<$Res>
    implements $EmailModelCopyWith<$Res> {
  factory _$$EmailModelImplCopyWith(
          _$EmailModelImpl value, $Res Function(_$EmailModelImpl) then) =
      __$$EmailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String to,
      String subject,
      String html,
      String company,
      String sendername});
}

/// @nodoc
class __$$EmailModelImplCopyWithImpl<$Res>
    extends _$EmailModelCopyWithImpl<$Res, _$EmailModelImpl>
    implements _$$EmailModelImplCopyWith<$Res> {
  __$$EmailModelImplCopyWithImpl(
      _$EmailModelImpl _value, $Res Function(_$EmailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
    Object? subject = null,
    Object? html = null,
    Object? company = null,
    Object? sendername = null,
  }) {
    return _then(_$EmailModelImpl(
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      html: null == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      sendername: null == sendername
          ? _value.sendername
          : sendername // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$EmailModelImpl implements _EmailModel {
  const _$EmailModelImpl(
      {required this.to,
      required this.subject,
      required this.html,
      required this.company,
      required this.sendername});

  factory _$EmailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmailModelImplFromJson(json);

  @override
  final String to;
  @override
  final String subject;
  @override
  final String html;
  @override
  final String company;
  @override
  final String sendername;

  @override
  String toString() {
    return 'EmailModel(to: $to, subject: $subject, html: $html, company: $company, sendername: $sendername)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailModelImpl &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.html, html) || other.html == html) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.sendername, sendername) ||
                other.sendername == sendername));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, to, subject, html, company, sendername);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailModelImplCopyWith<_$EmailModelImpl> get copyWith =>
      __$$EmailModelImplCopyWithImpl<_$EmailModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmailModelImplToJson(
      this,
    );
  }
}

abstract class _EmailModel implements EmailModel {
  const factory _EmailModel(
      {required final String to,
      required final String subject,
      required final String html,
      required final String company,
      required final String sendername}) = _$EmailModelImpl;

  factory _EmailModel.fromJson(Map<String, dynamic> json) =
      _$EmailModelImpl.fromJson;

  @override
  String get to;
  @override
  String get subject;
  @override
  String get html;
  @override
  String get company;
  @override
  String get sendername;
  @override
  @JsonKey(ignore: true)
  _$$EmailModelImplCopyWith<_$EmailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
