

import '../../models/user.dart';
import '../api/user_api.dart';
import '../storage/user_storage.dart';

class UserRepository {

  final UserApi _api;
  final UserStorage _storage;

  UserRepository(this._api, this._storage);


  Future<User> getMe() async {
    final remoteUser = await _api.getMe();

    _storage.insert(remoteUser);

    return remoteUser;
  }

  List<User> getAllLocal() {
    return _storage.allSorted;
  }


}