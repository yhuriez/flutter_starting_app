// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_ref.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FileRef _$$_FileRefFromJson(Map json) => _$_FileRef(
      uid: json['uid'] as String,
      url: json['url'] as String?,
      originPath: json['originPath'] as String?,
      relativePath: json['relativePath'] as String?,
      externalId: json['externalId'] as String?,
      type: json['type'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );

Map<String, dynamic> _$$_FileRefToJson(_$_FileRef instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'url': instance.url,
      'originPath': instance.originPath,
      'relativePath': instance.relativePath,
      'externalId': instance.externalId,
      'type': instance.type,
      'width': instance.width,
      'height': instance.height,
    };
