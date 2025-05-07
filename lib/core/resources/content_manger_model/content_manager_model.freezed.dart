// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_manager_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContentManagerModel _$ContentManagerModelFromJson(Map<String, dynamic> json) {
  return _ContentManagerModel.fromJson(json);
}

/// @nodoc
mixin _$ContentManagerModel {
  dynamic get data => throw _privateConstructorUsedError;
  String? get collectionName => throw _privateConstructorUsedError;
  String? get offlineKey => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this ContentManagerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContentManagerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentManagerModelCopyWith<ContentManagerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentManagerModelCopyWith<$Res> {
  factory $ContentManagerModelCopyWith(
          ContentManagerModel value, $Res Function(ContentManagerModel) then) =
      _$ContentManagerModelCopyWithImpl<$Res, ContentManagerModel>;
  @useResult
  $Res call(
      {dynamic data, String? collectionName, String? offlineKey, String? id});
}

/// @nodoc
class _$ContentManagerModelCopyWithImpl<$Res, $Val extends ContentManagerModel>
    implements $ContentManagerModelCopyWith<$Res> {
  _$ContentManagerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentManagerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? collectionName = freezed,
    Object? offlineKey = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      collectionName: freezed == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      offlineKey: freezed == offlineKey
          ? _value.offlineKey
          : offlineKey // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentManagerModelImplCopyWith<$Res>
    implements $ContentManagerModelCopyWith<$Res> {
  factory _$$ContentManagerModelImplCopyWith(_$ContentManagerModelImpl value,
          $Res Function(_$ContentManagerModelImpl) then) =
      __$$ContentManagerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic data, String? collectionName, String? offlineKey, String? id});
}

/// @nodoc
class __$$ContentManagerModelImplCopyWithImpl<$Res>
    extends _$ContentManagerModelCopyWithImpl<$Res, _$ContentManagerModelImpl>
    implements _$$ContentManagerModelImplCopyWith<$Res> {
  __$$ContentManagerModelImplCopyWithImpl(_$ContentManagerModelImpl _value,
      $Res Function(_$ContentManagerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentManagerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? collectionName = freezed,
    Object? offlineKey = freezed,
    Object? id = freezed,
  }) {
    return _then(_$ContentManagerModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      collectionName: freezed == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      offlineKey: freezed == offlineKey
          ? _value.offlineKey
          : offlineKey // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentManagerModelImpl implements _ContentManagerModel {
  const _$ContentManagerModelImpl(
      {required this.data,
      required this.collectionName,
      required this.offlineKey,
      this.id = ""});

  factory _$ContentManagerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentManagerModelImplFromJson(json);

  @override
  final dynamic data;
  @override
  final String? collectionName;
  @override
  final String? offlineKey;
  @override
  @JsonKey()
  final String? id;

  @override
  String toString() {
    return 'ContentManagerModel(data: $data, collectionName: $collectionName, offlineKey: $offlineKey, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentManagerModelImpl &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.offlineKey, offlineKey) ||
                other.offlineKey == offlineKey) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      collectionName,
      offlineKey,
      id);

  /// Create a copy of ContentManagerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentManagerModelImplCopyWith<_$ContentManagerModelImpl> get copyWith =>
      __$$ContentManagerModelImplCopyWithImpl<_$ContentManagerModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentManagerModelImplToJson(
      this,
    );
  }
}

abstract class _ContentManagerModel implements ContentManagerModel {
  const factory _ContentManagerModel(
      {required final dynamic data,
      required final String? collectionName,
      required final String? offlineKey,
      final String? id}) = _$ContentManagerModelImpl;

  factory _ContentManagerModel.fromJson(Map<String, dynamic> json) =
      _$ContentManagerModelImpl.fromJson;

  @override
  dynamic get data;
  @override
  String? get collectionName;
  @override
  String? get offlineKey;
  @override
  String? get id;

  /// Create a copy of ContentManagerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentManagerModelImplCopyWith<_$ContentManagerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
