

import 'package:uuid/uuid.dart';

import '../../models/user.dart';
import 'requests/create_user_request.dart';

class AuthApi {

  final Uuid _uuid;

  AuthApi(this._uuid);

  Future<String> signIn(String email, String password) async {
    // Need API implementation
    return _uuid.v4();
  }

  Future<User> createUser(CreateUserRequest request) async {
    // Need API implementation
    return User(uid: _uuid.v4(), updatedAt: DateTime.now(), email: request.email);
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