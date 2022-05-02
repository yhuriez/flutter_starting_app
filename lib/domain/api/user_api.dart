



import 'package:dio/dio.dart';
import 'package:flutter_starting_app/domain/api/configuration/oauth_storage.dart';
import 'package:flutter_starting_app/models/exceptions/unauthenticated_exception.dart';

import '../../models/exceptions/api_exception.dart';
import '../../models/exceptions/user_not_authorized_exception.dart';
import '../../models/file_ref.dart';
import '../../models/user.dart';
import '../configuration/logger.dart';

class UserApi {

  final Dio _dio;
  final OAuthStorage _oAuthStorage;

  UserApi(this._dio, this._oAuthStorage);

  Future<User> getMe() async {
    String path = "/user/me";

    try {
      final response = await _dio.get("${_oAuthStorage.endpoint}$path");

      final data = response.data;

      if (data != null) {
        return User.fromJson(data);
      }

      throw ApiException("Null data coming from $path");

    } on FormatException {
      throw ApiException("Invalid data format coming from $path");

    } on DioError catch (error) {
      logger.e(error);
      final response = error.response;
      final statusCode = response?.statusCode ?? -1;

      switch (statusCode) {
        case 401: throw UnauthenticatedException();
        case 403: throw UserNotAuthorizedException();
        case 500: throw ApiException("Server error (500) on $path", error);
        default: throw ApiException("Unknown error (status code: ${statusCode} on $path", error);
      }
    }
  }

  Future<void> updateEmail(String oldEmail, String newEmail) async {
    // Need implementation
  }

  Future<void> updatePassword(String oldPassword, String newPassword) async {
    // Need implementation
  }

  Future<String> updateProfilePicture(FileRef fileRef) async {
    // Need API implementation
    return "";
  }
}