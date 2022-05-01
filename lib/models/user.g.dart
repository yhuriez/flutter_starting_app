// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map json) => _$_User(
      uid: json['uid'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      email: json['email'] as String,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'uid': instance.uid,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'email': instance.email,
    };
