import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'item.freezed.dart';
part 'item.g.dart';


@freezed
class Item with _$Item {

  const Item._();

  const factory Item({
    required String uid,
    required DateTime updatedAt,
    required String value
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) =>
      _$ItemFromJson(json);
}