// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'token_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenRequest _$TokenRequestFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'password':
      return _TokenRequestCredentials.fromJson(json);
    case 'refresh':
      return _TokenRequestRefresh.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'TokenRequest',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$TokenRequestTearOff {
  const _$TokenRequestTearOff();

  _TokenRequestCredentials password(
      {required String client_id,
      required String client_secret,
      required String username,
      required String password,
      String grant_type = "password"}) {
    return _TokenRequestCredentials(
      client_id: client_id,
      client_secret: client_secret,
      username: username,
      password: password,
      grant_type: grant_type,
    );
  }

  _TokenRequestRefresh refresh(
      {required String client_id,
      required String client_secret,
      required String refresh_token,
      String grant_type = "refresh_token"}) {
    return _TokenRequestRefresh(
      client_id: client_id,
      client_secret: client_secret,
      refresh_token: refresh_token,
      grant_type: grant_type,
    );
  }

  TokenRequest fromJson(Map<String, Object?> json) {
    return TokenRequest.fromJson(json);
  }
}

/// @nodoc
const $TokenRequest = _$TokenRequestTearOff();

/// @nodoc
mixin _$TokenRequest {
  String get client_id => throw _privateConstructorUsedError;
  String get client_secret => throw _privateConstructorUsedError;
  String get grant_type => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String client_id, String client_secret,
            String username, String password, String grant_type)
        password,
    required TResult Function(String client_id, String client_secret,
            String refresh_token, String grant_type)
        refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String client_id, String client_secret, String username,
            String password, String grant_type)?
        password,
    TResult Function(String client_id, String client_secret,
            String refresh_token, String grant_type)?
        refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String client_id, String client_secret, String username,
            String password, String grant_type)?
        password,
    TResult Function(String client_id, String client_secret,
            String refresh_token, String grant_type)?
        refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TokenRequestCredentials value) password,
    required TResult Function(_TokenRequestRefresh value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TokenRequestCredentials value)? password,
    TResult Function(_TokenRequestRefresh value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TokenRequestCredentials value)? password,
    TResult Function(_TokenRequestRefresh value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenRequestCopyWith<TokenRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenRequestCopyWith<$Res> {
  factory $TokenRequestCopyWith(
          TokenRequest value, $Res Function(TokenRequest) then) =
      _$TokenRequestCopyWithImpl<$Res>;
  $Res call({String client_id, String client_secret, String grant_type});
}

/// @nodoc
class _$TokenRequestCopyWithImpl<$Res> implements $TokenRequestCopyWith<$Res> {
  _$TokenRequestCopyWithImpl(this._value, this._then);

  final TokenRequest _value;
  // ignore: unused_field
  final $Res Function(TokenRequest) _then;

  @override
  $Res call({
    Object? client_id = freezed,
    Object? client_secret = freezed,
    Object? grant_type = freezed,
  }) {
    return _then(_value.copyWith(
      client_id: client_id == freezed
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as String,
      client_secret: client_secret == freezed
          ? _value.client_secret
          : client_secret // ignore: cast_nullable_to_non_nullable
              as String,
      grant_type: grant_type == freezed
          ? _value.grant_type
          : grant_type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TokenRequestCredentialsCopyWith<$Res>
    implements $TokenRequestCopyWith<$Res> {
  factory _$TokenRequestCredentialsCopyWith(_TokenRequestCredentials value,
          $Res Function(_TokenRequestCredentials) then) =
      __$TokenRequestCredentialsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String client_id,
      String client_secret,
      String username,
      String password,
      String grant_type});
}

/// @nodoc
class __$TokenRequestCredentialsCopyWithImpl<$Res>
    extends _$TokenRequestCopyWithImpl<$Res>
    implements _$TokenRequestCredentialsCopyWith<$Res> {
  __$TokenRequestCredentialsCopyWithImpl(_TokenRequestCredentials _value,
      $Res Function(_TokenRequestCredentials) _then)
      : super(_value, (v) => _then(v as _TokenRequestCredentials));

  @override
  _TokenRequestCredentials get _value =>
      super._value as _TokenRequestCredentials;

  @override
  $Res call({
    Object? client_id = freezed,
    Object? client_secret = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? grant_type = freezed,
  }) {
    return _then(_TokenRequestCredentials(
      client_id: client_id == freezed
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as String,
      client_secret: client_secret == freezed
          ? _value.client_secret
          : client_secret // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      grant_type: grant_type == freezed
          ? _value.grant_type
          : grant_type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenRequestCredentials extends _TokenRequestCredentials
    with DiagnosticableTreeMixin {
  const _$_TokenRequestCredentials(
      {required this.client_id,
      required this.client_secret,
      required this.username,
      required this.password,
      this.grant_type = "password",
      String? $type})
      : $type = $type ?? 'password',
        super._();

  factory _$_TokenRequestCredentials.fromJson(Map<String, dynamic> json) =>
      _$$_TokenRequestCredentialsFromJson(json);

  @override
  final String client_id;
  @override
  final String client_secret;
  @override
  final String username;
  @override
  final String password;
  @JsonKey()
  @override
  final String grant_type;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TokenRequest.password(client_id: $client_id, client_secret: $client_secret, username: $username, password: $password, grant_type: $grant_type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TokenRequest.password'))
      ..add(DiagnosticsProperty('client_id', client_id))
      ..add(DiagnosticsProperty('client_secret', client_secret))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('grant_type', grant_type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TokenRequestCredentials &&
            const DeepCollectionEquality().equals(other.client_id, client_id) &&
            const DeepCollectionEquality()
                .equals(other.client_secret, client_secret) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.grant_type, grant_type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(client_id),
      const DeepCollectionEquality().hash(client_secret),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(grant_type));

  @JsonKey(ignore: true)
  @override
  _$TokenRequestCredentialsCopyWith<_TokenRequestCredentials> get copyWith =>
      __$TokenRequestCredentialsCopyWithImpl<_TokenRequestCredentials>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String client_id, String client_secret,
            String username, String password, String grant_type)
        password,
    required TResult Function(String client_id, String client_secret,
            String refresh_token, String grant_type)
        refresh,
  }) {
    return password(
        client_id, client_secret, username, this.password, grant_type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String client_id, String client_secret, String username,
            String password, String grant_type)?
        password,
    TResult Function(String client_id, String client_secret,
            String refresh_token, String grant_type)?
        refresh,
  }) {
    return password?.call(
        client_id, client_secret, username, this.password, grant_type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String client_id, String client_secret, String username,
            String password, String grant_type)?
        password,
    TResult Function(String client_id, String client_secret,
            String refresh_token, String grant_type)?
        refresh,
    required TResult orElse(),
  }) {
    if (password != null) {
      return password(
          client_id, client_secret, username, this.password, grant_type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TokenRequestCredentials value) password,
    required TResult Function(_TokenRequestRefresh value) refresh,
  }) {
    return password(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TokenRequestCredentials value)? password,
    TResult Function(_TokenRequestRefresh value)? refresh,
  }) {
    return password?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TokenRequestCredentials value)? password,
    TResult Function(_TokenRequestRefresh value)? refresh,
    required TResult orElse(),
  }) {
    if (password != null) {
      return password(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenRequestCredentialsToJson(this);
  }
}

abstract class _TokenRequestCredentials extends TokenRequest {
  const factory _TokenRequestCredentials(
      {required String client_id,
      required String client_secret,
      required String username,
      required String password,
      String grant_type}) = _$_TokenRequestCredentials;
  const _TokenRequestCredentials._() : super._();

  factory _TokenRequestCredentials.fromJson(Map<String, dynamic> json) =
      _$_TokenRequestCredentials.fromJson;

  @override
  String get client_id;
  @override
  String get client_secret;
  String get username;
  String get password;
  @override
  String get grant_type;
  @override
  @JsonKey(ignore: true)
  _$TokenRequestCredentialsCopyWith<_TokenRequestCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TokenRequestRefreshCopyWith<$Res>
    implements $TokenRequestCopyWith<$Res> {
  factory _$TokenRequestRefreshCopyWith(_TokenRequestRefresh value,
          $Res Function(_TokenRequestRefresh) then) =
      __$TokenRequestRefreshCopyWithImpl<$Res>;
  @override
  $Res call(
      {String client_id,
      String client_secret,
      String refresh_token,
      String grant_type});
}

/// @nodoc
class __$TokenRequestRefreshCopyWithImpl<$Res>
    extends _$TokenRequestCopyWithImpl<$Res>
    implements _$TokenRequestRefreshCopyWith<$Res> {
  __$TokenRequestRefreshCopyWithImpl(
      _TokenRequestRefresh _value, $Res Function(_TokenRequestRefresh) _then)
      : super(_value, (v) => _then(v as _TokenRequestRefresh));

  @override
  _TokenRequestRefresh get _value => super._value as _TokenRequestRefresh;

  @override
  $Res call({
    Object? client_id = freezed,
    Object? client_secret = freezed,
    Object? refresh_token = freezed,
    Object? grant_type = freezed,
  }) {
    return _then(_TokenRequestRefresh(
      client_id: client_id == freezed
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as String,
      client_secret: client_secret == freezed
          ? _value.client_secret
          : client_secret // ignore: cast_nullable_to_non_nullable
              as String,
      refresh_token: refresh_token == freezed
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
      grant_type: grant_type == freezed
          ? _value.grant_type
          : grant_type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenRequestRefresh extends _TokenRequestRefresh
    with DiagnosticableTreeMixin {
  const _$_TokenRequestRefresh(
      {required this.client_id,
      required this.client_secret,
      required this.refresh_token,
      this.grant_type = "refresh_token",
      String? $type})
      : $type = $type ?? 'refresh',
        super._();

  factory _$_TokenRequestRefresh.fromJson(Map<String, dynamic> json) =>
      _$$_TokenRequestRefreshFromJson(json);

  @override
  final String client_id;
  @override
  final String client_secret;
  @override
  final String refresh_token;
  @JsonKey()
  @override
  final String grant_type;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TokenRequest.refresh(client_id: $client_id, client_secret: $client_secret, refresh_token: $refresh_token, grant_type: $grant_type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TokenRequest.refresh'))
      ..add(DiagnosticsProperty('client_id', client_id))
      ..add(DiagnosticsProperty('client_secret', client_secret))
      ..add(DiagnosticsProperty('refresh_token', refresh_token))
      ..add(DiagnosticsProperty('grant_type', grant_type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TokenRequestRefresh &&
            const DeepCollectionEquality().equals(other.client_id, client_id) &&
            const DeepCollectionEquality()
                .equals(other.client_secret, client_secret) &&
            const DeepCollectionEquality()
                .equals(other.refresh_token, refresh_token) &&
            const DeepCollectionEquality()
                .equals(other.grant_type, grant_type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(client_id),
      const DeepCollectionEquality().hash(client_secret),
      const DeepCollectionEquality().hash(refresh_token),
      const DeepCollectionEquality().hash(grant_type));

  @JsonKey(ignore: true)
  @override
  _$TokenRequestRefreshCopyWith<_TokenRequestRefresh> get copyWith =>
      __$TokenRequestRefreshCopyWithImpl<_TokenRequestRefresh>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String client_id, String client_secret,
            String username, String password, String grant_type)
        password,
    required TResult Function(String client_id, String client_secret,
            String refresh_token, String grant_type)
        refresh,
  }) {
    return refresh(client_id, client_secret, refresh_token, grant_type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String client_id, String client_secret, String username,
            String password, String grant_type)?
        password,
    TResult Function(String client_id, String client_secret,
            String refresh_token, String grant_type)?
        refresh,
  }) {
    return refresh?.call(client_id, client_secret, refresh_token, grant_type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String client_id, String client_secret, String username,
            String password, String grant_type)?
        password,
    TResult Function(String client_id, String client_secret,
            String refresh_token, String grant_type)?
        refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(client_id, client_secret, refresh_token, grant_type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TokenRequestCredentials value) password,
    required TResult Function(_TokenRequestRefresh value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TokenRequestCredentials value)? password,
    TResult Function(_TokenRequestRefresh value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TokenRequestCredentials value)? password,
    TResult Function(_TokenRequestRefresh value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenRequestRefreshToJson(this);
  }
}

abstract class _TokenRequestRefresh extends TokenRequest {
  const factory _TokenRequestRefresh(
      {required String client_id,
      required String client_secret,
      required String refresh_token,
      String grant_type}) = _$_TokenRequestRefresh;
  const _TokenRequestRefresh._() : super._();

  factory _TokenRequestRefresh.fromJson(Map<String, dynamic> json) =
      _$_TokenRequestRefresh.fromJson;

  @override
  String get client_id;
  @override
  String get client_secret;
  String get refresh_token;
  @override
  String get grant_type;
  @override
  @JsonKey(ignore: true)
  _$TokenRequestRefreshCopyWith<_TokenRequestRefresh> get copyWith =>
      throw _privateConstructorUsedError;
}
