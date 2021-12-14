import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'app_user.freezed.dart';
part 'app_user.g.dart';


@freezed
class AppUser with _$AppUser {

  const AppUser._();

  const factory AppUser({
    required String uid,
    required DateTime updatedAt
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
}