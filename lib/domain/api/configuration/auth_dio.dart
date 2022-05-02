
import 'package:dio/dio.dart';
import 'package:flutter_starting_app/domain/api/auth_api.dart';
import 'package:flutter_starting_app/domain/api/configuration/oauth_storage.dart';
import 'package:flutter_starting_app/domain/api/responses/token.dart';
import 'package:flutter_starting_app/models/exceptions/unauthenticated_exception.dart';

import 'base_dio.dart';

class AuthDioWrapper {
  final Dio dioInstance;

  AuthDioWrapper(this.dioInstance);
}

Dio createDioAuthInstance(OAuthStorage oAuthStorage, AuthApi authApi) {

  final dio = createDioInstance();

  dio.interceptors.add(InterceptorsWrapper(

      onRequest: (requestOptions, handler) async {
        Token? token = oAuthStorage.token;

        if(token == null) throw UnauthenticatedException();

        String accessToken = token.access_token;

        var expirationDate = oAuthStorage.expirationDate;
        if(expirationDate != null && expirationDate.isBefore(DateTime.now())) {

          final response = await authApi.refresh();
          accessToken = response.access_token;
        }

        requestOptions.headers["Authorization"] = "Bearer $accessToken";
        handler.next(requestOptions);
      },

      onError: (error, handler) async {
        final statusCode = error.response?.statusCode;
        if(statusCode == 401 || statusCode == 403) {

          final token = await authApi.refresh();

          error.requestOptions.headers["Authorization"] = "Bearer ${token.access_token}";
          handler.next(error);

        } else {
          handler.reject(error);
        }
      }
  ));

  return dio;
}