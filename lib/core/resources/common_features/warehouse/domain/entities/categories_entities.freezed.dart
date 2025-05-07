// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoriesEntities _$CategoriesEntitiesFromJson(Map<String, dynamic> json) {
  return _CategoriesEntities.fromJson(json);
}

/// @nodoc
mixin _$CategoriesEntities {
  List<String?>? get name => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  int? get defaultLanguage => throw _privateConstructorUsedError;

  /// Serializes this CategoriesEntities to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoriesEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoriesEntitiesCopyWith<CategoriesEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesEntitiesCopyWith<$Res> {
  factory $CategoriesEntitiesCopyWith(
          CategoriesEntities value, $Res Function(CategoriesEntities) then) =
      _$CategoriesEntitiesCopyWithImpl<$Res, CategoriesEntities>;
  @useResult
  $Res call({List<String?>? name, String? id, int? defaultLanguage});
}

/// @nodoc
class _$CategoriesEntitiesCopyWithImpl<$Res, $Val extends CategoriesEntities>
    implements $CategoriesEntitiesCopyWith<$Res> {
  _$CategoriesEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? defaultLanguage = freezed,
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
      defaultLanguage: freezed == defaultLanguage
          ? _value.defaultLanguage
          : defaultLanguage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoriesEntitiesImplCopyWith<$Res>
    implements $CategoriesEntitiesCopyWith<$Res> {
  factory _$$CategoriesEntitiesImplCopyWith(_$CategoriesEntitiesImpl value,
          $Res Function(_$CategoriesEntitiesImpl) then) =
      __$$CategoriesEntitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String?>? name, String? id, int? defaultLanguage});
}

/// @nodoc
class __$$CategoriesEntitiesImplCopyWithImpl<$Res>
    extends _$CategoriesEntitiesCopyWithImpl<$Res, _$CategoriesEntitiesImpl>
    implements _$$CategoriesEntitiesImplCopyWith<$Res> {
  __$$CategoriesEntitiesImplCopyWithImpl(_$CategoriesEntitiesImpl _value,
      $Res Function(_$CategoriesEntitiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? defaultLanguage = freezed,
  }) {
    return _then(_$CategoriesEntitiesImpl(
      name: freezed == name
          ? _value._name
          : name // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultLanguage: freezed == defaultLanguage
          ? _value.defaultLanguage
          : defaultLanguage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoriesEntitiesImpl implements _CategoriesEntities {
  const _$CategoriesEntitiesImpl(
      {final List<String?>? name = const [],
      this.id = '',
      this.defaultLanguage = 0})
      : _name = name;

  factory _$CategoriesEntitiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoriesEntitiesImplFromJson(json);

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
  final int? defaultLanguage;

  @override
  String toString() {
    return 'CategoriesEntities(name: $name, id: $id, defaultLanguage: $defaultLanguage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesEntitiesImpl &&
            const DeepCollectionEquality().equals(other._name, _name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.defaultLanguage, defaultLanguage) ||
                other.defaultLanguage == defaultLanguage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_name), id, defaultLanguage);

  /// Create a copy of CategoriesEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesEntitiesImplCopyWith<_$CategoriesEntitiesImpl> get copyWith =>
      __$$CategoriesEntitiesImplCopyWithImpl<_$CategoriesEntitiesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoriesEntitiesImplToJson(
      this,
    );
  }
}

abstract class _CategoriesEntities implements CategoriesEntities {
  const factory _CategoriesEntities(
      {final List<String?>? name,
      final String? id,
      final int? defaultLanguage}) = _$CategoriesEntitiesImpl;

  factory _CategoriesEntities.fromJson(Map<String, dynamic> json) =
      _$CategoriesEntitiesImpl.fromJson;

  @override
  List<String?>? get name;
  @override
  String? get id;
  @override
  int? get defaultLanguage;

  /// Create a copy of CategoriesEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesEntitiesImplCopyWith<_$CategoriesEntitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
