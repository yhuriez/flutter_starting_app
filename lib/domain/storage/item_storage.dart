

import 'package:hive/hive.dart';

import '../../models/item.dart';
import '../configuration/hive_configuration.dart';


class ItemStorage {

  static const dbName = "item";

  final Box<Item> _boxDb;

  ItemStorage._(this._boxDb);

  static Future<Box<Item>> createBox(int typeId) async {
    Hive.registerAdapter(JsonTypeAdapter<Item>(
        typeId, (json) => Item.fromJson(json), (obj) => obj.toJson()));
    return Hive.openBox<Item>(dbName);
  }
  
  static Future<ItemStorage> create(int typeId) async {
    final box = await createBox(typeId); 
    return ItemStorage._(box);
  }

  Item insert(Item item) {
    _boxDb.put(item.uid, item);
    return item;
  }

  Item update(Item item) {
    final newItem = item.copyWith(updatedAt: DateTime.now());
    _boxDb.put(item.uid, newItem);
    return item;
  }

  List<Item> get all => _boxDb.values.toList();

  Item? get(String uid) => _boxDb.get(uid);

  Future<bool> delete(String uid) async {
    await _boxDb.delete(uid);
    return true;
  }

  List<Item> get allSorted {
    final sorted = _boxDb.values.toList()
      ..sort(sortItems);
    return sorted.toList();
  }

  int sortItems(Item first, Item second) =>
      first.updatedAt.compareTo(second.updatedAt);

  Stream<String> watch() {
    return _boxDb.watch().map((event) => event.key);
  }
}