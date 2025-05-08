// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoomEntity _$RoomEntityFromJson(Map<String, dynamic> json) {
  return _RoomEntity.fromJson(json);
}

/// @nodoc
mixin _$RoomEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @IconDataJsonConverter()
  IconData? get icon => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  VoidCallback? get onPressed => throw _privateConstructorUsedError;

  /// Serializes this RoomEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoomEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoomEntityCopyWith<RoomEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomEntityCopyWith<$Res> {
  factory $RoomEntityCopyWith(
          RoomEntity value, $Res Function(RoomEntity) then) =
      _$RoomEntityCopyWithImpl<$Res, RoomEntity>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? description,
      @IconDataJsonConverter() IconData? icon,
      String? image,
      @JsonKey(ignore: true) VoidCallback? onPressed});
}

/// @nodoc
class _$RoomEntityCopyWithImpl<$Res, $Val extends RoomEntity>
    implements $RoomEntityCopyWith<$Res> {
  _$RoomEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? icon = freezed,
    Object? image = freezed,
    Object? onPressed = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      onPressed: freezed == onPressed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomEntityImplCopyWith<$Res>
    implements $RoomEntityCopyWith<$Res> {
  factory _$$RoomEntityImplCopyWith(
          _$RoomEntityImpl value, $Res Function(_$RoomEntityImpl) then) =
      __$$RoomEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? description,
      @IconDataJsonConverter() IconData? icon,
      String? image,
      @JsonKey(ignore: true) VoidCallback? onPressed});
}

/// @nodoc
class __$$RoomEntityImplCopyWithImpl<$Res>
    extends _$RoomEntityCopyWithImpl<$Res, _$RoomEntityImpl>
    implements _$$RoomEntityImplCopyWith<$Res> {
  __$$RoomEntityImplCopyWithImpl(
      _$RoomEntityImpl _value, $Res Function(_$RoomEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? icon = freezed,
    Object? image = freezed,
    Object? onPressed = freezed,
  }) {
    return _then(_$RoomEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      onPressed: freezed == onPressed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomEntityImpl implements _RoomEntity {
  const _$RoomEntityImpl(
      {this.id = "",
      this.name = "",
      this.description = "",
      @IconDataJsonConverter() this.icon = Icons.error_outline,
      this.image = "",
      @JsonKey(ignore: true) this.onPressed});

  factory _$RoomEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomEntityImplFromJson(json);

  @override
  @JsonKey()
  final String? id;
  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final String? description;
  @override
  @JsonKey()
  @IconDataJsonConverter()
  final IconData? icon;
  @override
  @JsonKey()
  final String? image;
  @override
  @JsonKey(ignore: true)
  final VoidCallback? onPressed;

  @override
  String toString() {
    return 'RoomEntity(id: $id, name: $name, description: $description, icon: $icon, image: $image, onPressed: $onPressed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, icon, image, onPressed);

  /// Create a copy of RoomEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomEntityImplCopyWith<_$RoomEntityImpl> get copyWith =>
      __$$RoomEntityImplCopyWithImpl<_$RoomEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomEntityImplToJson(
      this,
    );
  }
}

abstract class _RoomEntity implements RoomEntity {
  const factory _RoomEntity(
      {final String? id,
      final String? name,
      final String? description,
      @IconDataJsonConverter() final IconData? icon,
      final String? image,
      @JsonKey(ignore: true) final VoidCallback? onPressed}) = _$RoomEntityImpl;

  factory _RoomEntity.fromJson(Map<String, dynamic> json) =
      _$RoomEntityImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  @IconDataJsonConverter()
  IconData? get icon;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  VoidCallback? get onPressed;

  /// Create a copy of RoomEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomEntityImplCopyWith<_$RoomEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
