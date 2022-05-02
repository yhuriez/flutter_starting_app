import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'token.freezed.dart';

part 'token.g.dart';


@freezed
class Token with _$Token {

  const Token._();

  const factory Token({
    required String access_token,
    required String refresh_token,
    int? expires_in
  }) = _Token;

  factory Token.fromJson(Map<String, dynamic> json) =>
      _$TokenFromJson(json);
}