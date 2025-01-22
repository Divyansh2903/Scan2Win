// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterImpl _$$RegisterImplFromJson(Map<String, dynamic> json) =>
    _$RegisterImpl(
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      upiId: json['upiId'] as String,
      date: DateTime.parse(json['date'] as String),
      registrationFor: json['registrationFor'] as String,
      slipDownloadUrl: json['slipDownloadUrl'] as String,
    );

Map<String, dynamic> _$$RegisterImplToJson(_$RegisterImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'upiId': instance.upiId,
      'date': instance.date.toIso8601String(),
      'registrationFor': instance.registrationFor,
      'slipDownloadUrl': instance.slipDownloadUrl,
    };
