// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'file_ref.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FileRef _$FileRefFromJson(Map<String, dynamic> json) {
  return _FileRef.fromJson(json);
}

/// @nodoc
class _$FileRefTearOff {
  const _$FileRefTearOff();

  _FileRef call(
      {required String uid,
      String? url,
      String? originPath,
      String? relativePath,
      String? externalId,
      String? type,
      int? width,
      int? height}) {
    return _FileRef(
      uid: uid,
      url: url,
      originPath: originPath,
      relativePath: relativePath,
      externalId: externalId,
      type: type,
      width: width,
      height: height,
    );
  }

  FileRef fromJson(Map<String, Object?> json) {
    return FileRef.fromJson(json);
  }
}

/// @nodoc
const $FileRef = _$FileRefTearOff();

/// @nodoc
mixin _$FileRef {
  String get uid => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get originPath => throw _privateConstructorUsedError;
  String? get relativePath => throw _privateConstructorUsedError;
  String? get externalId => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileRefCopyWith<FileRef> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileRefCopyWith<$Res> {
  factory $FileRefCopyWith(FileRef value, $Res Function(FileRef) then) =
      _$FileRefCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      String? url,
      String? originPath,
      String? relativePath,
      String? externalId,
      String? type,
      int? width,
      int? height});
}

/// @nodoc
class _$FileRefCopyWithImpl<$Res> implements $FileRefCopyWith<$Res> {
  _$FileRefCopyWithImpl(this._value, this._then);

  final FileRef _value;
  // ignore: unused_field
  final $Res Function(FileRef) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? url = freezed,
    Object? originPath = freezed,
    Object? relativePath = freezed,
    Object? externalId = freezed,
    Object? type = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      originPath: originPath == freezed
          ? _value.originPath
          : originPath // ignore: cast_nullable_to_non_nullable
              as String?,
      relativePath: relativePath == freezed
          ? _value.relativePath
          : relativePath // ignore: cast_nullable_to_non_nullable
              as String?,
      externalId: externalId == freezed
          ? _value.externalId
          : externalId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$FileRefCopyWith<$Res> implements $FileRefCopyWith<$Res> {
  factory _$FileRefCopyWith(_FileRef value, $Res Function(_FileRef) then) =
      __$FileRefCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      String? url,
      String? originPath,
      String? relativePath,
      String? externalId,
      String? type,
      int? width,
      int? height});
}

/// @nodoc
class __$FileRefCopyWithImpl<$Res> extends _$FileRefCopyWithImpl<$Res>
    implements _$FileRefCopyWith<$Res> {
  __$FileRefCopyWithImpl(_FileRef _value, $Res Function(_FileRef) _then)
      : super(_value, (v) => _then(v as _FileRef));

  @override
  _FileRef get _value => super._value as _FileRef;

  @override
  $Res call({
    Object? uid = freezed,
    Object? url = freezed,
    Object? originPath = freezed,
    Object? relativePath = freezed,
    Object? externalId = freezed,
    Object? type = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_FileRef(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      originPath: originPath == freezed
          ? _value.originPath
          : originPath // ignore: cast_nullable_to_non_nullable
              as String?,
      relativePath: relativePath == freezed
          ? _value.relativePath
          : relativePath // ignore: cast_nullable_to_non_nullable
              as String?,
      externalId: externalId == freezed
          ? _value.externalId
          : externalId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FileRef extends _FileRef with DiagnosticableTreeMixin {
  const _$_FileRef(
      {required this.uid,
      this.url,
      this.originPath,
      this.relativePath,
      this.externalId,
      this.type,
      this.width,
      this.height})
      : super._();

  factory _$_FileRef.fromJson(Map<String, dynamic> json) =>
      _$$_FileRefFromJson(json);

  @override
  final String uid;
  @override
  final String? url;
  @override
  final String? originPath;
  @override
  final String? relativePath;
  @override
  final String? externalId;
  @override
  final String? type;
  @override
  final int? width;
  @override
  final int? height;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FileRef(uid: $uid, url: $url, originPath: $originPath, relativePath: $relativePath, externalId: $externalId, type: $type, width: $width, height: $height)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FileRef'))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('originPath', originPath))
      ..add(DiagnosticsProperty('relativePath', relativePath))
      ..add(DiagnosticsProperty('externalId', externalId))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('width', width))
      ..add(DiagnosticsProperty('height', height));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FileRef &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.originPath, originPath) &&
            const DeepCollectionEquality()
                .equals(other.relativePath, relativePath) &&
            const DeepCollectionEquality()
                .equals(other.externalId, externalId) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.height, height));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(originPath),
      const DeepCollectionEquality().hash(relativePath),
      const DeepCollectionEquality().hash(externalId),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(height));

  @JsonKey(ignore: true)
  @override
  _$FileRefCopyWith<_FileRef> get copyWith =>
      __$FileRefCopyWithImpl<_FileRef>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FileRefToJson(this);
  }
}

abstract class _FileRef extends FileRef {
  const factory _FileRef(
      {required String uid,
      String? url,
      String? originPath,
      String? relativePath,
      String? externalId,
      String? type,
      int? width,
      int? height}) = _$_FileRef;
  const _FileRef._() : super._();

  factory _FileRef.fromJson(Map<String, dynamic> json) = _$_FileRef.fromJson;

  @override
  String get uid;
  @override
  String? get url;
  @override
  String? get originPath;
  @override
  String? get relativePath;
  @override
  String? get externalId;
  @override
  String? get type;
  @override
  int? get width;
  @override
  int? get height;
  @override
  @JsonKey(ignore: true)
  _$FileRefCopyWith<_FileRef> get copyWith =>
      throw _privateConstructorUsedError;
}
