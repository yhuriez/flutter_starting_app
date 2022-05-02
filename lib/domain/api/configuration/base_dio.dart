

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class BaseDioWrapper {
  final Dio dioInstance;

  BaseDioWrapper(this.dioInstance);
}

Dio createDioInstance() {
  final dio = Dio(BaseOptions(
    headers: {
      "UserConnection": "Keep-Alive",
      "Accept-Charset": "UTF-8",
      "Content-Type": "application/json",
    },
    connectTimeout: 60000,
    receiveTimeout: 60000,
  ));
  (dio.transformer as DefaultTransformer).jsonDecodeCallback = _parseJson;
  dio.interceptors.add(LogInterceptor(responseBody: false));
  return dio;
}

// Must be top-level function
_parseAndDecode(String response) {
  return jsonDecode(response);
}

_parseJson(String text) {
  return compute(_parseAndDecode, text);
}