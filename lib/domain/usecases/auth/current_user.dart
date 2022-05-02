


import 'package:flutter_starting_app/models/user.dart';

import '../../storage/session_storage.dart';
import '../../storage/user_storage.dart';

class CurrentUserUseCase {

  final SessionStorage _sessionRepository;
  final UserStorage _userStorage;

  CurrentUserUseCase(this._sessionRepository, this._userStorage);

  User? execute()  {
    final uid = _sessionRepository.getProperty(SessionStorage.current_user_id_property);
    if (uid == null) return null;
    return _userStorage.get(uid);
  }
}