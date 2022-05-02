// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateUserRequest _$CreateUserRequestFromJson(Map<String, dynamic> json) {
  return _CreateUserRequest.fromJson(json);
}

/// @nodoc
class _$CreateUserRequestTearOff {
  const _$CreateUserRequestTearOff();

  _CreateUserRequest call({required String email, required String password}) {
    return _CreateUserRequest(
      email: email,
      password: password,
    );
  }

  CreateUserRequest fromJson(Map<String, Object?> json) {
    return CreateUserRequest.fromJson(json);
  }
}

/// @nodoc
const $CreateUserRequest = _$CreateUserRequestTearOff();

/// @nodoc
mixin _$CreateUserRequest {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateUserRequestCopyWith<CreateUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserRequestCopyWith<$Res> {
  factory $CreateUserRequestCopyWith(
          CreateUserRequest value, $Res Function(CreateUserRequest) then) =
      _$CreateUserRequestCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$CreateUserRequestCopyWithImpl<$Res>
    implements $CreateUserRequestCopyWith<$Res> {
  _$CreateUserRequestCopyWithImpl(this._value, this._then);

  final CreateUserRequest _value;
  // ignore: unused_field
  final $Res Function(CreateUserRequest) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CreateUserRequestCopyWith<$Res>
    implements $CreateUserRequestCopyWith<$Res> {
  factory _$CreateUserRequestCopyWith(
          _CreateUserRequest value, $Res Function(_CreateUserRequest) then) =
      __$CreateUserRequestCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class __$CreateUserRequestCopyWithImpl<$Res>
    extends _$CreateUserRequestCopyWithImpl<$Res>
    implements _$CreateUserRequestCopyWith<$Res> {
  __$CreateUserRequestCopyWithImpl(
      _CreateUserRequest _value, $Res Function(_CreateUserRequest) _then)
      : super(_value, (v) => _then(v as _CreateUserRequest));

  @override
  _CreateUserRequest get _value => super._value as _CreateUserRequest;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_CreateUserRequest(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateUserRequest extends _CreateUserRequest
    with DiagnosticableTreeMixin {
  const _$_CreateUserRequest({required this.email, required this.password})
      : super._();

  factory _$_CreateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CreateUserRequestFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateUserRequest(email: $email, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateUserRequest'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateUserRequest &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$CreateUserRequestCopyWith<_CreateUserRequest> get copyWith =>
      __$CreateUserRequestCopyWithImpl<_CreateUserRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateUserRequestToJson(this);
  }
}

abstract class _CreateUserRequest extends CreateUserRequest {
  const factory _CreateUserRequest(
      {required String email, required String password}) = _$_CreateUserRequest;
  const _CreateUserRequest._() : super._();

  factory _CreateUserRequest.fromJson(Map<String, dynamic> json) =
      _$_CreateUserRequest.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$CreateUserRequestCopyWith<_CreateUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
