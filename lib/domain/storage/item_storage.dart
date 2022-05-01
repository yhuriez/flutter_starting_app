



import '../../models/item.dart';

class ItemStorage {

  static const dbName = "item";

  final Map<String, Item> _items = {};



  Item insert(Item item) {
    _items[item.uid] = item;
    return item;
  }

  Item update(Item item) {
    final newItem = item.copyWith(updatedAt: DateTime.now());
    _items[item.uid] = newItem;
    return item;
  }

  List<Item> get all => _items.values.toList();

  Item? get(String uid) => _items[uid];

  Future<bool> delete(String uid) async {
    await _items.remove(uid);
    return true;
  }

  List<Item> get allSorted {
    final sorted = _items.values.toList()
      ..sort(sortItems);
    return sorted.toList();
  }

  int sortItems(Item first, Item second) =>
      first.updatedAt.compareTo(second.updatedAt);

  Stream<Item> watch() {
    return Stream.empty();
  }
}