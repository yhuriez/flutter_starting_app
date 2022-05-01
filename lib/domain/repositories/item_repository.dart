


import '../../models/item.dart';
import '../api/item_api.dart';
import '../storage/item_storage.dart';

class ItemRepository {

  final ItemApi _api;
  final ItemStorage _storage;

  ItemRepository(this._api, this._storage);

  Future<Item?> get(String uid) async {

    final localItem = _storage.get(uid);

    if(localItem == null) {
      final remoteItem = await _api.get(uid);

      return remoteItem;
    }

    return localItem;
  }

  List<Item> getAllLocal() {
    return _storage.allSorted;
  }

  Future<Item> create(String value) async {

    final remoteItem = await _api.post(value);

    _storage.insert(remoteItem);

    return remoteItem;
  }

  Future<Item> update(Item item) async {

    final updatedItem = await _api.put(item);

    _storage.update(updatedItem);

    return updatedItem;
  }

  Future<void> delete(String uid) async {

    await _api.delete(uid);

    _storage.delete(uid);
  }


}