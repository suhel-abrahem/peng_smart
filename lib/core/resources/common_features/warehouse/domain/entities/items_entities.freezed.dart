// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ItemsEntities _$ItemsEntitiesFromJson(Map<String, dynamic> json) {
  return _ItemsEntities.fromJson(json);
}

/// @nodoc
mixin _$ItemsEntities {
  List<String?>? get name => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;
  List<double>? get price => throw _privateConstructorUsedError;
  int? get solidNumber => throw _privateConstructorUsedError;
  double? get review => throw _privateConstructorUsedError;
  List<String?>? get itemDescriptions => throw _privateConstructorUsedError;
  int? get defaultLanguage => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  DateTime? get offerFrom => throw _privateConstructorUsedError;
  DateTime? get offerTo => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  bool? get isFav => throw _privateConstructorUsedError;
  List<double>? get dimensions => throw _privateConstructorUsedError;
  DateTime? get productionDate => throw _privateConstructorUsedError;
  DateTime? get expireDate => throw _privateConstructorUsedError;

  /// Serializes this ItemsEntities to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemsEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemsEntitiesCopyWith<ItemsEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsEntitiesCopyWith<$Res> {
  factory $ItemsEntitiesCopyWith(
          ItemsEntities value, $Res Function(ItemsEntities) then) =
      _$ItemsEntitiesCopyWithImpl<$Res, ItemsEntities>;
  @useResult
  $Res call(
      {List<String?>? name,
      String? id,
      int? categoryId,
      List<double>? price,
      int? solidNumber,
      double? review,
      List<String?>? itemDescriptions,
      int? defaultLanguage,
      double? discount,
      DateTime? offerFrom,
      DateTime? offerTo,
      int? quantity,
      bool? isFav,
      List<double>? dimensions,
      DateTime? productionDate,
      DateTime? expireDate});
}

/// @nodoc
class _$ItemsEntitiesCopyWithImpl<$Res, $Val extends ItemsEntities>
    implements $ItemsEntitiesCopyWith<$Res> {
  _$ItemsEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemsEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? categoryId = freezed,
    Object? price = freezed,
    Object? solidNumber = freezed,
    Object? review = freezed,
    Object? itemDescriptions = freezed,
    Object? defaultLanguage = freezed,
    Object? discount = freezed,
    Object? offerFrom = freezed,
    Object? offerTo = freezed,
    Object? quantity = freezed,
    Object? isFav = freezed,
    Object? dimensions = freezed,
    Object? productionDate = freezed,
    Object? expireDate = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      solidNumber: freezed == solidNumber
          ? _value.solidNumber
          : solidNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as double?,
      itemDescriptions: freezed == itemDescriptions
          ? _value.itemDescriptions
          : itemDescriptions // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      defaultLanguage: freezed == defaultLanguage
          ? _value.defaultLanguage
          : defaultLanguage // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      offerFrom: freezed == offerFrom
          ? _value.offerFrom
          : offerFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      offerTo: freezed == offerTo
          ? _value.offerTo
          : offerTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      isFav: freezed == isFav
          ? _value.isFav
          : isFav // ignore: cast_nullable_to_non_nullable
              as bool?,
      dimensions: freezed == dimensions
          ? _value.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      productionDate: freezed == productionDate
          ? _value.productionDate
          : productionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expireDate: freezed == expireDate
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemsEntitiesImplCopyWith<$Res>
    implements $ItemsEntitiesCopyWith<$Res> {
  factory _$$ItemsEntitiesImplCopyWith(
          _$ItemsEntitiesImpl value, $Res Function(_$ItemsEntitiesImpl) then) =
      __$$ItemsEntitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String?>? name,
      String? id,
      int? categoryId,
      List<double>? price,
      int? solidNumber,
      double? review,
      List<String?>? itemDescriptions,
      int? defaultLanguage,
      double? discount,
      DateTime? offerFrom,
      DateTime? offerTo,
      int? quantity,
      bool? isFav,
      List<double>? dimensions,
      DateTime? productionDate,
      DateTime? expireDate});
}

/// @nodoc
class __$$ItemsEntitiesImplCopyWithImpl<$Res>
    extends _$ItemsEntitiesCopyWithImpl<$Res, _$ItemsEntitiesImpl>
    implements _$$ItemsEntitiesImplCopyWith<$Res> {
  __$$ItemsEntitiesImplCopyWithImpl(
      _$ItemsEntitiesImpl _value, $Res Function(_$ItemsEntitiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemsEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? categoryId = freezed,
    Object? price = freezed,
    Object? solidNumber = freezed,
    Object? review = freezed,
    Object? itemDescriptions = freezed,
    Object? defaultLanguage = freezed,
    Object? discount = freezed,
    Object? offerFrom = freezed,
    Object? offerTo = freezed,
    Object? quantity = freezed,
    Object? isFav = freezed,
    Object? dimensions = freezed,
    Object? productionDate = freezed,
    Object? expireDate = freezed,
  }) {
    return _then(_$ItemsEntitiesImpl(
      name: freezed == name
          ? _value._name
          : name // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value._price
          : price // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      solidNumber: freezed == solidNumber
          ? _value.solidNumber
          : solidNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as double?,
      itemDescriptions: freezed == itemDescriptions
          ? _value._itemDescriptions
          : itemDescriptions // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      defaultLanguage: freezed == defaultLanguage
          ? _value.defaultLanguage
          : defaultLanguage // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      offerFrom: freezed == offerFrom
          ? _value.offerFrom
          : offerFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      offerTo: freezed == offerTo
          ? _value.offerTo
          : offerTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      isFav: freezed == isFav
          ? _value.isFav
          : isFav // ignore: cast_nullable_to_non_nullable
              as bool?,
      dimensions: freezed == dimensions
          ? _value._dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      productionDate: freezed == productionDate
          ? _value.productionDate
          : productionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expireDate: freezed == expireDate
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemsEntitiesImpl implements _ItemsEntities {
  const _$ItemsEntitiesImpl(
      {final List<String?>? name = const [],
      this.id = '',
      this.categoryId = null,
      final List<double>? price = const [],
      this.solidNumber = 0,
      this.review = 0.0,
      final List<String?>? itemDescriptions = const [],
      this.defaultLanguage = 0,
      this.discount = 0.0,
      this.offerFrom = null,
      this.offerTo = null,
      this.quantity = 0,
      this.isFav = false,
      final List<double>? dimensions = const [],
      this.productionDate = null,
      this.expireDate = null})
      : _name = name,
        _price = price,
        _itemDescriptions = itemDescriptions,
        _dimensions = dimensions;

  factory _$ItemsEntitiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemsEntitiesImplFromJson(json);

  final List<String?>? _name;
  @override
  @JsonKey()
  List<String?>? get name {
    final value = _name;
    if (value == null) return null;
    if (_name is EqualUnmodifiableListView) return _name;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final String? id;
  @override
  @JsonKey()
  final int? categoryId;
  final List<double>? _price;
  @override
  @JsonKey()
  List<double>? get price {
    final value = _price;
    if (value == null) return null;
    if (_price is EqualUnmodifiableListView) return _price;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int? solidNumber;
  @override
  @JsonKey()
  final double? review;
  final List<String?>? _itemDescriptions;
  @override
  @JsonKey()
  List<String?>? get itemDescriptions {
    final value = _itemDescriptions;
    if (value == null) return null;
    if (_itemDescriptions is EqualUnmodifiableListView)
      return _itemDescriptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int? defaultLanguage;
  @override
  @JsonKey()
  final double? discount;
  @override
  @JsonKey()
  final DateTime? offerFrom;
  @override
  @JsonKey()
  final DateTime? offerTo;
  @override
  @JsonKey()
  final int? quantity;
  @override
  @JsonKey()
  final bool? isFav;
  final List<double>? _dimensions;
  @override
  @JsonKey()
  List<double>? get dimensions {
    final value = _dimensions;
    if (value == null) return null;
    if (_dimensions is EqualUnmodifiableListView) return _dimensions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final DateTime? productionDate;
  @override
  @JsonKey()
  final DateTime? expireDate;

  @override
  String toString() {
    return 'ItemsEntities(name: $name, id: $id, categoryId: $categoryId, price: $price, solidNumber: $solidNumber, review: $review, itemDescriptions: $itemDescriptions, defaultLanguage: $defaultLanguage, discount: $discount, offerFrom: $offerFrom, offerTo: $offerTo, quantity: $quantity, isFav: $isFav, dimensions: $dimensions, productionDate: $productionDate, expireDate: $expireDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsEntitiesImpl &&
            const DeepCollectionEquality().equals(other._name, _name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            const DeepCollectionEquality().equals(other._price, _price) &&
            (identical(other.solidNumber, solidNumber) ||
                other.solidNumber == solidNumber) &&
            (identical(other.review, review) || other.review == review) &&
            const DeepCollectionEquality()
                .equals(other._itemDescriptions, _itemDescriptions) &&
            (identical(other.defaultLanguage, defaultLanguage) ||
                other.defaultLanguage == defaultLanguage) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.offerFrom, offerFrom) ||
                other.offerFrom == offerFrom) &&
            (identical(other.offerTo, offerTo) || other.offerTo == offerTo) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.isFav, isFav) || other.isFav == isFav) &&
            const DeepCollectionEquality()
                .equals(other._dimensions, _dimensions) &&
            (identical(other.productionDate, productionDate) ||
                other.productionDate == productionDate) &&
            (identical(other.expireDate, expireDate) ||
                other.expireDate == expireDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_name),
      id,
      categoryId,
      const DeepCollectionEquality().hash(_price),
      solidNumber,
      review,
      const DeepCollectionEquality().hash(_itemDescriptions),
      defaultLanguage,
      discount,
      offerFrom,
      offerTo,
      quantity,
      isFav,
      const DeepCollectionEquality().hash(_dimensions),
      productionDate,
      expireDate);

  /// Create a copy of ItemsEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemsEntitiesImplCopyWith<_$ItemsEntitiesImpl> get copyWith =>
      __$$ItemsEntitiesImplCopyWithImpl<_$ItemsEntitiesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemsEntitiesImplToJson(
      this,
    );
  }
}

abstract class _ItemsEntities implements ItemsEntities {
  const factory _ItemsEntities(
      {final List<String?>? name,
      final String? id,
      final int? categoryId,
      final List<double>? price,
      final int? solidNumber,
      final double? review,
      final List<String?>? itemDescriptions,
      final int? defaultLanguage,
      final double? discount,
      final DateTime? offerFrom,
      final DateTime? offerTo,
      final int? quantity,
      final bool? isFav,
      final List<double>? dimensions,
      final DateTime? productionDate,
      final DateTime? expireDate}) = _$ItemsEntitiesImpl;

  factory _ItemsEntities.fromJson(Map<String, dynamic> json) =
      _$ItemsEntitiesImpl.fromJson;

  @override
  List<String?>? get name;
  @override
  String? get id;
  @override
  int? get categoryId;
  @override
  List<double>? get price;
  @override
  int? get solidNumber;
  @override
  double? get review;
  @override
  List<String?>? get itemDescriptions;
  @override
  int? get defaultLanguage;
  @override
  double? get discount;
  @override
  DateTime? get offerFrom;
  @override
  DateTime? get offerTo;
  @override
  int? get quantity;
  @override
  bool? get isFav;
  @override
  List<double>? get dimensions;
  @override
  DateTime? get productionDate;
  @override
  DateTime? get expireDate;

  /// Create a copy of ItemsEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemsEntitiesImplCopyWith<_$ItemsEntitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
