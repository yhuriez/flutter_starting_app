


import 'package:flutter_starting_app/domain/api/requests/create_user_request.dart';
import 'package:flutter_starting_app/domain/repositories/user_repository.dart';

import '../../api/auth_api.dart';
import '../../configuration/logger.dart';
import '../../storage/session_storage.dart';

class CreateAccountUseCase {

  final AuthApi _authApi;
  final SessionStorage _sessionStorage;
  final UserRepository _userRepository;

  CreateAccountUseCase(this._authApi, this._userRepository, this._sessionStorage);

  Future<void> execute(CreateUserRequest request) async {
    try {
      await _authApi.createUser(request);

      final user = await _userRepository.getMe();

      _sessionStorage.saveProperty(SessionStorage.current_user_id_property, user.uid);

    } catch (exception) {
      logger.e("Error on signIn", exception);
    }
  }
}