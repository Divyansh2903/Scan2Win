
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register.freezed.dart';
part 'register.g.dart';

@freezed
class Register with _$Register {
  const Register._();
  const factory Register(
      {required String name,

        required String phoneNumber,required String upiId, required DateTime date,required String registrationFor, required String slipDownloadUrl}) = _Register;

  factory Register.fromJson(Map<String, dynamic> json) => _$RegisterFromJson(json);
}






