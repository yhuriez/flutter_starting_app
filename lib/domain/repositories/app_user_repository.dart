import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_starting_app/models/app_user.dart';
import 'package:flutter_starting_app/domain/configuration/hive_configuration.dart';


class AppUserRepository {

  static const dbName = "app_user";

  final Box<AppUser> _boxDb;
  final Uuid _uuid;

  static Future<Box<AppUser>> createBox(int typeId) async {
    Hive.registerAdapter(JsonTypeAdapter<AppUser>(
        typeId, (json) => AppUser.fromJson(json), (obj) => obj.toJson()));
    return Hive.openBox<AppUser>(dbName);
  }

  AppUserRepository(this._boxDb, this._uuid);

  AppUser create() {
    return AppUser(uid: _uuid.v4(), updatedAt: DateTime.now());
  }

  AppUser update(AppUser item) {
    final newItem = item.copyWith(updatedAt: DateTime.now());
    _boxDb.put(item.uid, newItem);
    return item;
  }

  List<AppUser> get all => _boxDb.values.toList();

  AppUser get(String uid) => _boxDb.get(uid)!;

  Future<bool> delete(String uid) async {
    await _boxDb.delete(uid);
    return true;
  }

  List<AppUser> get allSorted {
    final sorted = _boxDb.values.toList()
      ..sort(sortItems);
    return sorted.toList();
  }

  int sortItems(AppUser first, AppUser second) =>
      first.updatedAt.compareTo(second.updatedAt);

  Stream<BoxEvent> watch() {
    return _boxDb.watch();
  }
}