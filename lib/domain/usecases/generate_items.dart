


import '../../models/item.dart';
import '../repositories/item_repository.dart';

class GenerateItemsUseCase {

  final ItemRepository _repository;

  GenerateItemsUseCase(this._repository);


  Future<List<Item>> execute(int count) async {

    List<Item> result = [];

    final localItems = _repository.getAllLocal();

    if(localItems.length >= count) {
      return localItems.sublist(0, count);
    }

    for (int index = 0; index < count; index++) {

      final item = await _repository.create("Item ${index}");

      result.add(item);
    }

    return result;
  }
}