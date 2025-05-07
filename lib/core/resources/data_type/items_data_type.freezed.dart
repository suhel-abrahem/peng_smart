// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items_data_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ItemsDataType _$ItemsDataTypeFromJson(Map<String, dynamic> json) {
  return _ItemsDataType.fromJson(json);
}

/// @nodoc
mixin _$ItemsDataType {
  ItemsEntities? get itemsEntities => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;
  String? get categoryName => throw _privateConstructorUsedError;
  int? get bypass => throw _privateConstructorUsedError;
  List<int>? get image => throw _privateConstructorUsedError;
  bool? get isUploaded => throw _privateConstructorUsedError;
  bool? get isEdit => throw _privateConstructorUsedError;

  /// Serializes this ItemsDataType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemsDataType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemsDataTypeCopyWith<ItemsDataType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsDataTypeCopyWith<$Res> {
  factory $ItemsDataTypeCopyWith(
          ItemsDataType value, $Res Function(ItemsDataType) then) =
      _$ItemsDataTypeCopyWithImpl<$Res, ItemsDataType>;
  @useResult
  $Res call(
      {ItemsEntities? itemsEntities,
      int? categoryId,
      String? categoryName,
      int? bypass,
      List<int>? image,
      bool? isUploaded,
      bool? isEdit});

  $ItemsEntitiesCopyWith<$Res>? get itemsEntities;
}

/// @nodoc
class _$ItemsDataTypeCopyWithImpl<$Res, $Val extends ItemsDataType>
    implements $ItemsDataTypeCopyWith<$Res> {
  _$ItemsDataTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemsDataType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemsEntities = freezed,
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? bypass = freezed,
    Object? image = freezed,
    Object? isUploaded = freezed,
    Object? isEdit = freezed,
  }) {
    return _then(_value.copyWith(
      itemsEntities: freezed == itemsEntities
          ? _value.itemsEntities
          : itemsEntities // ignore: cast_nullable_to_non_nullable
              as ItemsEntities?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      bypass: freezed == bypass
          ? _value.bypass
          : bypass // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      isUploaded: freezed == isUploaded
          ? _value.isUploaded
          : isUploaded // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEdit: freezed == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of ItemsDataType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemsEntitiesCopyWith<$Res>? get itemsEntities {
    if (_value.itemsEntities == null) {
      return null;
    }

    return $ItemsEntitiesCopyWith<$Res>(_value.itemsEntities!, (value) {
      return _then(_value.copyWith(itemsEntities: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemsDataTypeImplCopyWith<$Res>
    implements $ItemsDataTypeCopyWith<$Res> {
  factory _$$ItemsDataTypeImplCopyWith(
          _$ItemsDataTypeImpl value, $Res Function(_$ItemsDataTypeImpl) then) =
      __$$ItemsDataTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ItemsEntities? itemsEntities,
      int? categoryId,
      String? categoryName,
      int? bypass,
      List<int>? image,
      bool? isUploaded,
      bool? isEdit});

  @override
  $ItemsEntitiesCopyWith<$Res>? get itemsEntities;
}

/// @nodoc
class __$$ItemsDataTypeImplCopyWithImpl<$Res>
    extends _$ItemsDataTypeCopyWithImpl<$Res, _$ItemsDataTypeImpl>
    implements _$$ItemsDataTypeImplCopyWith<$Res> {
  __$$ItemsDataTypeImplCopyWithImpl(
      _$ItemsDataTypeImpl _value, $Res Function(_$ItemsDataTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemsDataType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemsEntities = freezed,
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? bypass = freezed,
    Object? image = freezed,
    Object? isUploaded = freezed,
    Object? isEdit = freezed,
  }) {
    return _then(_$ItemsDataTypeImpl(
      itemsEntities: freezed == itemsEntities
          ? _value.itemsEntities
          : itemsEntities // ignore: cast_nullable_to_non_nullable
              as ItemsEntities?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      bypass: freezed == bypass
          ? _value.bypass
          : bypass // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      isUploaded: freezed == isUploaded
          ? _value.isUploaded
          : isUploaded // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEdit: freezed == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemsDataTypeImpl implements _ItemsDataType {
  _$ItemsDataTypeImpl(
      {this.itemsEntities = const ItemsEntities(),
      this.categoryId = 0,
      this.categoryName = "",
      this.bypass = 0,
      final List<int>? image = const [],
      this.isUploaded = false,
      this.isEdit = false})
      : _image = image;

  factory _$ItemsDataTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemsDataTypeImplFromJson(json);

  @override
  @JsonKey()
  final ItemsEntities? itemsEntities;
  @override
  @JsonKey()
  final int? categoryId;
  @override
  @JsonKey()
  final String? categoryName;
  @override
  @JsonKey()
  final int? bypass;
  final List<int>? _image;
  @override
  @JsonKey()
  List<int>? get image {
    final value = _image;
    if (value == null) return null;
    if (_image is EqualUnmodifiableListView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool? isUploaded;
  @override
  @JsonKey()
  final bool? isEdit;

  @override
  String toString() {
    return 'ItemsDataType(itemsEntities: $itemsEntities, categoryId: $categoryId, categoryName: $categoryName, bypass: $bypass, image: $image, isUploaded: $isUploaded, isEdit: $isEdit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsDataTypeImpl &&
            (identical(other.itemsEntities, itemsEntities) ||
                other.itemsEntities == itemsEntities) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.bypass, bypass) || other.bypass == bypass) &&
            const DeepCollectionEquality().equals(other._image, _image) &&
            (identical(other.isUploaded, isUploaded) ||
                other.isUploaded == isUploaded) &&
            (identical(other.isEdit, isEdit) || other.isEdit == isEdit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itemsEntities,
      categoryId,
      categoryName,
      bypass,
      const DeepCollectionEquality().hash(_image),
      isUploaded,
      isEdit);

  /// Create a copy of ItemsDataType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemsDataTypeImplCopyWith<_$ItemsDataTypeImpl> get copyWith =>
      __$$ItemsDataTypeImplCopyWithImpl<_$ItemsDataTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemsDataTypeImplToJson(
      this,
    );
  }
}

abstract class _ItemsDataType implements ItemsDataType {
  factory _ItemsDataType(
      {final ItemsEntities? itemsEntities,
      final int? categoryId,
      final String? categoryName,
      final int? bypass,
      final List<int>? image,
      final bool? isUploaded,
      final bool? isEdit}) = _$ItemsDataTypeImpl;

  factory _ItemsDataType.fromJson(Map<String, dynamic> json) =
      _$ItemsDataTypeImpl.fromJson;

  @override
  ItemsEntities? get itemsEntities;
  @override
  int? get categoryId;
  @override
  String? get categoryName;
  @override
  int? get bypass;
  @override
  List<int>? get image;
  @override
  bool? get isUploaded;
  @override
  bool? get isEdit;

  /// Create a copy of ItemsDataType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemsDataTypeImplCopyWith<_$ItemsDataTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
