


import '../../models/item.dart';

///
/// Empty implementation of api to fake server behavior
///
class ItemApi {

  Map<String, Item> _items = {};

  ItemApi();

  Future<Item> post(Item item) async {
    final newItem = item.copyWith(value: item.value);
    _items[item.uid] = newItem;
    return newItem;
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