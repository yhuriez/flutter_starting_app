
import 'package:flutter_starting_app/domain/repositories/user_repository.dart';

import '../../api/auth_api.dart';
import '../../configuration/logger.dart';
import '../../storage/session_storage.dart';

class SignInUseCase {

  final AuthApi _authApi;
  final SessionStorage _sessionStorage;
  final UserRepository _userRepository;


  SignInUseCase(this._authApi, this._sessionStorage, this._userRepository);

  Future<void> execute({required String email, required String password}) async {

    try {
      final userId = await _authApi.signIn(email, password);

      _sessionStorage.saveProperty(SessionStorage.current_user_id_property, userId);

      await _userRepository.get(userId);

    } catch (exception) {
      logger.e("Error on signIn", exception);
    }
  }
}