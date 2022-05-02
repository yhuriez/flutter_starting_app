
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
      await _authApi.signIn(email, password);

      final user = await _userRepository.getMe();

      _sessionStorage.saveProperty(SessionStorage.current_user_id_property, user.uid);

    } catch (exception) {
      logger.e("Error on signIn", exception);
    }
  }
}