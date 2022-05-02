

import 'package:dio/dio.dart';
import 'package:flutter_starting_app/models/exceptions/user_not_authorized_exception.dart';
import 'package:flutter_starting_app/models/exceptions/user_not_existing_exception.dart';

import '../../models/exceptions/api_exception.dart';
import '../../models/user.dart';
import '../configuration/logger.dart';
import 'configuration/oauth_storage.dart';
import 'requests/create_user_request.dart';
import 'responses/token.dart';

class AuthApi {

  final Dio _dio;
  final OAuthStorage _oAuthStorage;

  AuthApi(this._dio, this._oAuthStorage);

  Future<bool> signIn(String email, String password) async {

    String path = "/oauth/v2/token";

    try {
      final response = await _dio.post(
          "${_oAuthStorage.endpoint}$path",
          data: _oAuthStorage.getPasswordTokenRequest(email: email, password: password)
      );

      final data = response.data;

      if (data != null) {
        final token = Token.fromJson(data);
        _oAuthStorage.saveToken(token);
        return true;
      }

      throw ApiException("Null data coming from $path");

    } on FormatException {
      throw ApiException("Invalid data format coming from $path");

    } on DioError catch (error) {
      logger.e(error);
      final response = error.response;
      final statusCode = response?.statusCode ?? -1;

      switch (statusCode) {
        case 401: throw UserNotExistingException();
        case 403: throw UserNotAuthorizedException();
        case 500: throw ApiException("Server error (500) on /oauth/v2/token", error);
        default: throw ApiException("Unknown error (status code: ${statusCode} on /oauth/v2/token", error);
      }
    }
  }

  Future<bool> createUser(CreateUserRequest request) async {
    String path = "/create";

    try {
      final response = await _dio.post(
          "${_oAuthStorage.endpoint}$path",
          data: request.toJson()
      );

      final data = response.data;

      if (data != null) {
        final token = Token.fromJson(data);
        _oAuthStorage.saveToken(token);
        return true;
      }

      throw ApiException("Null data coming from $path");

    } on FormatException {
      throw ApiException("Invalid data format coming from $path");

    } on DioError catch (error) {
      logger.e(error);
      final response = error.response;
      final statusCode = response?.statusCode ?? -1;

      switch (statusCode) {
        case 401: throw UserNotExistingException();
        case 403: throw UserNotAuthorizedException();
        case 500: throw ApiException("Server error (500) on /oauth/v2/token", error);
        default: throw ApiException("Unknown error (status code: ${statusCode} on /oauth/v2/token", error);
      }
    }
  }

  Future<Token> refresh() async {

    String path = "/oauth/v2/token";

    try {
      final response = await _dio.post(
          "${_oAuthStorage.endpoint}$path",
          data: _oAuthStorage.getRefreshTokenRequest()
      );

      final data = response.data;

      if (data != null) {
        final token = Token.fromJson(data);
        _oAuthStorage.saveToken(token);
        return token;
      }

      throw ApiException("Null data coming from $path");

    } on FormatException {
      throw ApiException("Invalid data format coming from $path");

    } on DioError catch (error) {
      logger.e(error);
      final response = error.response;
      final statusCode = response?.statusCode ?? -1;

      switch (statusCode) {
        case 401: throw UserNotExistingException();
        case 403: throw UserNotAuthorizedException();
        case 500: throw ApiException("Server error (500) on /oauth/v2/token", error);
        default: throw ApiException("Unknown error (status code: ${statusCode} on /oauth/v2/token", error);
      }
    }
  }

  Future<void> lostPassword() async {
    // Need API implementation
  }

  Future<void> validateEmail() async {
    // Need API implementation
  }

  Future<void> signOut() async {
    // Need API implementation
  }
}