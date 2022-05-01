

import 'package:flutter_starting_app/models/user.dart';


class UserStorage {

  static const dbName = "user";

  final Map<String, User> _boxDb = {};

  User insert(User item) {
    _boxDb[item.uid] = item;
    return item;
  }

  User update(User item) {
    final newItem = item.copyWith(updatedAt: DateTime.now());
    _boxDb[item.uid] = newItem;
    return item;
  }

  List<User> get all => _boxDb.values.toList();

  User? get(String uid) => _boxDb[uid];

  Future<bool> delete(String uid) async {
    await _boxDb.remove(uid);
    return true;
  }

  List<User> get allSorted {
    final sorted = _boxDb.values.toList()
      ..sort(sortItems);
    return sorted.toList();
  }

  int sortItems(User first, User second) =>
      first.updatedAt.compareTo(second.updatedAt);

  Stream<String> watch() {
    return Stream.empty();
  }
}