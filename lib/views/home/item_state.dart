import 'package:flutter/material.dart';

import '../../domain/configuration/injection.dart';
import '../../domain/repositories/item_repository.dart';
import '../../domain/usecases/generate_items.dart';
import '../../models/item.dart';


class ItemState with ChangeNotifier {

  final GenerateItemsUseCase _generateItemsUseCase = sl();
  final ItemRepository _repository = sl();

  List<Item> _items = [];

  List<Item> get items => _items;

  // TODO Add some state that is related to the ItemPage widget here

  ItemState() {
    init();
  }

  init() async {
    _items = await _generateItemsUseCase.execute(5);
    notifyListeners();
  }

  create(String value) async {
    await _repository.create(value);
    _refreshItems();
  }

  update(Item item) async {
    await _repository.update(item);
    _refreshItems();
  }

  delete(String itemId) async {
    await _repository.delete(itemId);
    _refreshItems();
  }

  _refreshItems() {
    _items = _repository.getAllLocal();
    notifyListeners();
  }
}