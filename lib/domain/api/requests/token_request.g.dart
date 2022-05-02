// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenRequestCredentials _$$_TokenRequestCredentialsFromJson(Map json) =>
    _$_TokenRequestCredentials(
      client_id: json['client_id'] as String,
      client_secret: json['client_secret'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      grant_type: json['grant_type'] as String? ?? "password",
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_TokenRequestCredentialsToJson(
        _$_TokenRequestCredentials instance) =>
    <String, dynamic>{
      'client_id': instance.client_id,
      'client_secret': instance.client_secret,
      'username': instance.username,
      'password': instance.password,
      'grant_type': instance.grant_type,
      'runtimeType': instance.$type,
    };

_$_TokenRequestRefresh _$$_TokenRequestRefreshFromJson(Map json) =>
    _$_TokenRequestRefresh(
      client_id: json['client_id'] as String,
      client_secret: json['client_secret'] as String,
      refresh_token: json['refresh_token'] as String,
      grant_type: json['grant_type'] as String? ?? "refresh_token",
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_TokenRequestRefreshToJson(
        _$_TokenRequestRefresh instance) =>
    <String, dynamic>{
      'client_id': instance.client_id,
      'client_secret': instance.client_secret,
      'refresh_token': instance.refresh_token,
      'grant_type': instance.grant_type,
      'runtimeType': instance.$type,
    };
