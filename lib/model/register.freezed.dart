// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Register _$RegisterFromJson(Map<String, dynamic> json) {
  return _Register.fromJson(json);
}

/// @nodoc
mixin _$Register {
  String get name => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get upiId => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get registrationFor => throw _privateConstructorUsedError;
  String get slipDownloadUrl => throw _privateConstructorUsedError;

  /// Serializes this Register to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Register
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterCopyWith<Register> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterCopyWith<$Res> {
  factory $RegisterCopyWith(Register value, $Res Function(Register) then) =
      _$RegisterCopyWithImpl<$Res, Register>;
  @useResult
  $Res call(
      {String name,
      String phoneNumber,
      String upiId,
      DateTime date,
      String registrationFor,
      String slipDownloadUrl});
}

/// @nodoc
class _$RegisterCopyWithImpl<$Res, $Val extends Register>
    implements $RegisterCopyWith<$Res> {
  _$RegisterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Register
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phoneNumber = null,
    Object? upiId = null,
    Object? date = null,
    Object? registrationFor = null,
    Object? slipDownloadUrl = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      upiId: null == upiId
          ? _value.upiId
          : upiId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      registrationFor: null == registrationFor
          ? _value.registrationFor
          : registrationFor // ignore: cast_nullable_to_non_nullable
              as String,
      slipDownloadUrl: null == slipDownloadUrl
          ? _value.slipDownloadUrl
          : slipDownloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterImplCopyWith<$Res>
    implements $RegisterCopyWith<$Res> {
  factory _$$RegisterImplCopyWith(
          _$RegisterImpl value, $Res Function(_$RegisterImpl) then) =
      __$$RegisterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String phoneNumber,
      String upiId,
      DateTime date,
      String registrationFor,
      String slipDownloadUrl});
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$RegisterCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
      _$RegisterImpl _value, $Res Function(_$RegisterImpl) _then)
      : super(_value, _then);

  /// Create a copy of Register
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phoneNumber = null,
    Object? upiId = null,
    Object? date = null,
    Object? registrationFor = null,
    Object? slipDownloadUrl = null,
  }) {
    return _then(_$RegisterImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      upiId: null == upiId
          ? _value.upiId
          : upiId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      registrationFor: null == registrationFor
          ? _value.registrationFor
          : registrationFor // ignore: cast_nullable_to_non_nullable
              as String,
      slipDownloadUrl: null == slipDownloadUrl
          ? _value.slipDownloadUrl
          : slipDownloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterImpl extends _Register with DiagnosticableTreeMixin {
  const _$RegisterImpl(
      {required this.name,
      required this.phoneNumber,
      required this.upiId,
      required this.date,
      required this.registrationFor,
      required this.slipDownloadUrl})
      : super._();

  factory _$RegisterImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterImplFromJson(json);

  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final String upiId;
  @override
  final DateTime date;
  @override
  final String registrationFor;
  @override
  final String slipDownloadUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Register(name: $name, phoneNumber: $phoneNumber, upiId: $upiId, date: $date, registrationFor: $registrationFor, slipDownloadUrl: $slipDownloadUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Register'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('upiId', upiId))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('registrationFor', registrationFor))
      ..add(DiagnosticsProperty('slipDownloadUrl', slipDownloadUrl));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.upiId, upiId) || other.upiId == upiId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.registrationFor, registrationFor) ||
                other.registrationFor == registrationFor) &&
            (identical(other.slipDownloadUrl, slipDownloadUrl) ||
                other.slipDownloadUrl == slipDownloadUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, phoneNumber, upiId, date,
      registrationFor, slipDownloadUrl);

  /// Create a copy of Register
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      __$$RegisterImplCopyWithImpl<_$RegisterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterImplToJson(
      this,
    );
  }
}

abstract class _Register extends Register {
  const factory _Register(
      {required final String name,
      required final String phoneNumber,
      required final String upiId,
      required final DateTime date,
      required final String registrationFor,
      required final String slipDownloadUrl}) = _$RegisterImpl;
  const _Register._() : super._();

  factory _Register.fromJson(Map<String, dynamic> json) =
      _$RegisterImpl.fromJson;

  @override
  String get name;
  @override
  String get phoneNumber;
  @override
  String get upiId;
  @override
  DateTime get date;
  @override
  String get registrationFor;
  @override
  String get slipDownloadUrl;

  /// Create a copy of Register
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
