// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'id_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IdEntities _$IdEntitiesFromJson(Map<String, dynamic> json) {
  return _IdEntities.fromJson(json);
}

/// @nodoc
mixin _$IdEntities {
  int get id => throw _privateConstructorUsedError;

  /// Serializes this IdEntities to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IdEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IdEntitiesCopyWith<IdEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdEntitiesCopyWith<$Res> {
  factory $IdEntitiesCopyWith(
          IdEntities value, $Res Function(IdEntities) then) =
      _$IdEntitiesCopyWithImpl<$Res, IdEntities>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$IdEntitiesCopyWithImpl<$Res, $Val extends IdEntities>
    implements $IdEntitiesCopyWith<$Res> {
  _$IdEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IdEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdEntitiesImplCopyWith<$Res>
    implements $IdEntitiesCopyWith<$Res> {
  factory _$$IdEntitiesImplCopyWith(
          _$IdEntitiesImpl value, $Res Function(_$IdEntitiesImpl) then) =
      __$$IdEntitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$IdEntitiesImplCopyWithImpl<$Res>
    extends _$IdEntitiesCopyWithImpl<$Res, _$IdEntitiesImpl>
    implements _$$IdEntitiesImplCopyWith<$Res> {
  __$$IdEntitiesImplCopyWithImpl(
      _$IdEntitiesImpl _value, $Res Function(_$IdEntitiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of IdEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$IdEntitiesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdEntitiesImpl implements _IdEntities {
  const _$IdEntitiesImpl({this.id = 0});

  factory _$IdEntitiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdEntitiesImplFromJson(json);

  @override
  @JsonKey()
  final int id;

  @override
  String toString() {
    return 'IdEntities(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdEntitiesImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of IdEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdEntitiesImplCopyWith<_$IdEntitiesImpl> get copyWith =>
      __$$IdEntitiesImplCopyWithImpl<_$IdEntitiesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdEntitiesImplToJson(
      this,
    );
  }
}

abstract class _IdEntities implements IdEntities {
  const factory _IdEntities({final int id}) = _$IdEntitiesImpl;

  factory _IdEntities.fromJson(Map<String, dynamic> json) =
      _$IdEntitiesImpl.fromJson;

  @override
  int get id;

  /// Create a copy of IdEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdEntitiesImplCopyWith<_$IdEntitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
