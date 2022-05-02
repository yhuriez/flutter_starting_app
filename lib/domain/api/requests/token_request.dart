import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'token_request.freezed.dart';

part 'token_request.g.dart';


@freezed
class TokenRequest with _$TokenRequest {

  const TokenRequest._();

  const factory TokenRequest.password({
    required String client_id,
    required String client_secret,
    required String username,
    required String password,
    @Default("password") String grant_type
  }) = _TokenRequestCredentials;

  const factory TokenRequest.refresh({
    required String client_id,
    required String client_secret,
    required String refresh_token,
    @Default("refresh_token") String grant_type
  }) = _TokenRequestRefresh;

  factory TokenRequest.fromJson(Map<String, dynamic> json) =>
      _$TokenRequestFromJson(json);
}