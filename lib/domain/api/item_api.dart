


import 'package:uuid/uuid.dart';

import '../../models/item.dart';

///
/// Empty implementation of api to fake server behavior
///
class ItemApi {

  final Uuid _uuid;


  Map<String, Item> _items = {};

  ItemApi(this._uuid);

  Future<Item> post(String value) async {
    final uid = _uuid.v4();
    final item = Item(uid: uid, updatedAt: DateTime.now(), value: value);
    _items[uid] = item;
    return item;
  }

  Future<Item> put(Item item) async {
    _items[item.uid] = item;
    return item;
  }

  Future<Item?> get(String uid) async {
    return _items[uid];
  }

  Future<void> delete(String uid) async {
    _items.remove(uid);
  }
}