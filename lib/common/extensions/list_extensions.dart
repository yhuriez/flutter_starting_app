


import 'dart:math';

extension ListExtensions<T> on List<T> {
  List<D> mapIndexed<D>(D Function(int, T) builder) {
    return List.generate(this.length, (index) => builder(index, this[index]));
  }

  List<D> mapNotNull<D>(D? Function(T) builder) {
    return map(builder)
        .where((item) => item != null)
        .map((item) => item!)
        .toList();
  }

  T? firstOrNullWhere(bool Function(T) test) {
    final searchValues = where(test);
    return (searchValues.isEmpty) ? null : searchValues.first;
  }

  Map<D, T> toMap<D>(D Function(T) mapper) {
    final Map<D, T> result = {};
    forEach((element) { result[mapper(element)] = element; });
    return result;
  }

  List<T> copy() {
    return List.generate(length, (index) => this[index]);
  }

  List<List<T>> partition(int splitCount) {
    List<List<T>> result = [];
    for(int index = 0; index < this.length; index += splitCount) {
      result.add(sublist(index, min(length, index + splitCount)));
    }
    return result;
  }


  List<T> addBetween(T Function(int) addedValue) {
    if(length <= 1) return this;

    List<T> result = [];
    for(int index = 0; index < length; index++ ) {
      result.add(this[index]);
      if(index < length - 1) {
        result.add(addedValue(index));
      }
    }
    return result;
  }

  T? getOrNull(int index) {
    return (index >= length) ? null : elementAt(index);
  }
}

extension MapExt<K,V> on Map<K,V> {
  V? getOrNull(K key) {
    return containsKey(key) ? this[key] : null;
  }

  Map<K,V> combine(Map<K,V> mapToCombine) {
    final newMap = Map<K,V>.of(this);
    newMap.addAll(mapToCombine);
    return newMap;
  }

  addIfNotNull(K key, V? value) {
    if(value != null) {
      this[key] = value;
    }
  }
}