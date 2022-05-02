


import 'package:flutter_starting_app/domain/api/requests/create_user_request.dart';

import '../../api/auth_api.dart';
import '../../api/user_api.dart';
import '../../configuration/logger.dart';
import '../../storage/session_storage.dart';
import '../../storage/user_storage.dart';

class CreateAccountUseCase {

  final AuthApi _authApi;
  final SessionStorage _sessionStorage;
  final UserStorage _userStorage;

  CreateAccountUseCase(this._authApi, this._userStorage, this._sessionStorage);

  Future<void> execute(CreateUserRequest request) async {
    try {
      final user = await _authApi.createUser(request);

      _sessionStorage.saveProperty(SessionStorage.current_user_id_property, user.uid);

      _userStorage.insert(user);

    } catch (exception) {
      logger.e("Error on signIn", exception);
    }
  }
}