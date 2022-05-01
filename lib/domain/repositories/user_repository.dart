

import '../../models/user.dart';
import '../api/user_api.dart';
import '../storage/user_storage.dart';

class UserRepository {

  final UserApi _api;
  final UserStorage _storage;

  UserRepository(this._api, this._storage);


  Future<User?> get(String uid) async {

    final localUser = _storage.get(uid);

    if(localUser == null) {
      final remoteUser = await _api.get(uid);

      return remoteUser;
    }

    return localUser;
  }

  List<User> getAllLocal() {
    return _storage.allSorted;
  }
}