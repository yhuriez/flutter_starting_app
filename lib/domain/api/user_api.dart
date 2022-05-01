

import 'package:flutter_starting_app/models/file_ref.dart';

import '../../models/user.dart';

class UserApi {

  Future<User> get(String userId) async {
    // Need API implementation
    return User(uid: userId, email: "$userId@mail.com", updatedAt: DateTime.now());
  }

  Future<void> updateEmail(String oldEmail, String newEmail) async {
    // Need API implementation
  }

  Future<void> updatePassword(String oldPassword, String newPassword) async {
    // Need API implementation
  }

  Future<String> updateProfilePicture(FileRef fileRef) async {
    // Need API implementation
    return "";
  }
}