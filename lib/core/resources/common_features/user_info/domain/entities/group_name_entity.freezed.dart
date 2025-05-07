// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_name_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RuleGroupNameEntity _$RuleGroupNameEntityFromJson(Map<String, dynamic> json) {
  return _RuleGroupName.fromJson(json);
}

/// @nodoc
mixin _$RuleGroupNameEntity {
  String? get name => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this RuleGroupNameEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RuleGroupNameEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RuleGroupNameEntityCopyWith<RuleGroupNameEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RuleGroupNameEntityCopyWith<$Res> {
  factory $RuleGroupNameEntityCopyWith(
          RuleGroupNameEntity value, $Res Function(RuleGroupNameEntity) then) =
      _$RuleGroupNameEntityCopyWithImpl<$Res, RuleGroupNameEntity>;
  @useResult
  $Res call({String? name, String? id});
}

/// @nodoc
class _$RuleGroupNameEntityCopyWithImpl<$Res, $Val extends RuleGroupNameEntity>
    implements $RuleGroupNameEntityCopyWith<$Res> {
  _$RuleGroupNameEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RuleGroupNameEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RuleGroupNameImplCopyWith<$Res>
    implements $RuleGroupNameEntityCopyWith<$Res> {
  factory _$$RuleGroupNameImplCopyWith(
          _$RuleGroupNameImpl value, $Res Function(_$RuleGroupNameImpl) then) =
      __$$RuleGroupNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? id});
}

/// @nodoc
class __$$RuleGroupNameImplCopyWithImpl<$Res>
    extends _$RuleGroupNameEntityCopyWithImpl<$Res, _$RuleGroupNameImpl>
    implements _$$RuleGroupNameImplCopyWith<$Res> {
  __$$RuleGroupNameImplCopyWithImpl(
      _$RuleGroupNameImpl _value, $Res Function(_$RuleGroupNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of RuleGroupNameEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_$RuleGroupNameImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$RuleGroupNameImpl implements _RuleGroupName {
  const _$RuleGroupNameImpl({this.name = '', this.id = ''});

  factory _$RuleGroupNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$RuleGroupNameImplFromJson(json);

  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final String? id;

  @override
  String toString() {
    return 'RuleGroupNameEntity(name: $name, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RuleGroupNameImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, id);

  /// Create a copy of RuleGroupNameEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RuleGroupNameImplCopyWith<_$RuleGroupNameImpl> get copyWith =>
      __$$RuleGroupNameImplCopyWithImpl<_$RuleGroupNameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RuleGroupNameImplToJson(
      this,
    );
  }
}

abstract class _RuleGroupName implements RuleGroupNameEntity {
  const factory _RuleGroupName({final String? name, final String? id}) =
      _$RuleGroupNameImpl;

  factory _RuleGroupName.fromJson(Map<String, dynamic> json) =
      _$RuleGroupNameImpl.fromJson;

  @override
  String? get name;
  @override
  String? get id;

  /// Create a copy of RuleGroupNameEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RuleGroupNameImplCopyWith<_$RuleGroupNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
