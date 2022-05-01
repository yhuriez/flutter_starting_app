import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'file_ref.freezed.dart';

part 'file_ref.g.dart';


@freezed
class FileRef with _$FileRef {

  const FileRef._();

  const factory FileRef({
    required String uid,
    String? url,
    String? originPath,
    String? relativePath,
    String? externalId,
    String? type,
    int? width,
    int? height,
  }) = _FileRef;

  factory FileRef.fromJson(Map<String, dynamic> json) =>
      _$FileRefFromJson(json);
}