// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserInfoEntity {

 String? get id; String? get name; String? get email; String? get phoneNumber; String? get avatarUrl; String? get token; String? get refreshToken; int get expiresIn; LoginStateEnum? get loginState;
/// Create a copy of UserInfoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInfoEntityCopyWith<UserInfoEntity> get copyWith => _$UserInfoEntityCopyWithImpl<UserInfoEntity>(this as UserInfoEntity, _$identity);

  /// Serializes this UserInfoEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInfoEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.token, token) || other.token == token)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn)&&(identical(other.loginState, loginState) || other.loginState == loginState));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phoneNumber,avatarUrl,token,refreshToken,expiresIn,loginState);

@override
String toString() {
  return 'UserInfoEntity(id: $id, name: $name, email: $email, phoneNumber: $phoneNumber, avatarUrl: $avatarUrl, token: $token, refreshToken: $refreshToken, expiresIn: $expiresIn, loginState: $loginState)';
}


}

/// @nodoc
abstract mixin class $UserInfoEntityCopyWith<$Res>  {
  factory $UserInfoEntityCopyWith(UserInfoEntity value, $Res Function(UserInfoEntity) _then) = _$UserInfoEntityCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, String? email, String? phoneNumber, String? avatarUrl, String? token, String? refreshToken, int expiresIn, LoginStateEnum? loginState
});




}
/// @nodoc
class _$UserInfoEntityCopyWithImpl<$Res>
    implements $UserInfoEntityCopyWith<$Res> {
  _$UserInfoEntityCopyWithImpl(this._self, this._then);

  final UserInfoEntity _self;
  final $Res Function(UserInfoEntity) _then;

/// Create a copy of UserInfoEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,Object? phoneNumber = freezed,Object? avatarUrl = freezed,Object? token = freezed,Object? refreshToken = freezed,Object? expiresIn = null,Object? loginState = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,expiresIn: null == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int,loginState: freezed == loginState ? _self.loginState : loginState // ignore: cast_nullable_to_non_nullable
as LoginStateEnum?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserInfoEntity].
extension UserInfoEntityPatterns on UserInfoEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserInfoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserInfoEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserInfoEntity value)  $default,){
final _that = this;
switch (_that) {
case _UserInfoEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserInfoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UserInfoEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  String? email,  String? phoneNumber,  String? avatarUrl,  String? token,  String? refreshToken,  int expiresIn,  LoginStateEnum? loginState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserInfoEntity() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phoneNumber,_that.avatarUrl,_that.token,_that.refreshToken,_that.expiresIn,_that.loginState);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  String? email,  String? phoneNumber,  String? avatarUrl,  String? token,  String? refreshToken,  int expiresIn,  LoginStateEnum? loginState)  $default,) {final _that = this;
switch (_that) {
case _UserInfoEntity():
return $default(_that.id,_that.name,_that.email,_that.phoneNumber,_that.avatarUrl,_that.token,_that.refreshToken,_that.expiresIn,_that.loginState);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  String? email,  String? phoneNumber,  String? avatarUrl,  String? token,  String? refreshToken,  int expiresIn,  LoginStateEnum? loginState)?  $default,) {final _that = this;
switch (_that) {
case _UserInfoEntity() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phoneNumber,_that.avatarUrl,_that.token,_that.refreshToken,_that.expiresIn,_that.loginState);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserInfoEntity implements UserInfoEntity {
  const _UserInfoEntity({this.id = "", this.name = "", this.email = "", this.phoneNumber = "", this.avatarUrl = "", this.token = "", this.refreshToken = "", this.expiresIn = 0, this.loginState = LoginStateEnum.logout});
  factory _UserInfoEntity.fromJson(Map<String, dynamic> json) => _$UserInfoEntityFromJson(json);

@override@JsonKey() final  String? id;
@override@JsonKey() final  String? name;
@override@JsonKey() final  String? email;
@override@JsonKey() final  String? phoneNumber;
@override@JsonKey() final  String? avatarUrl;
@override@JsonKey() final  String? token;
@override@JsonKey() final  String? refreshToken;
@override@JsonKey() final  int expiresIn;
@override@JsonKey() final  LoginStateEnum? loginState;

/// Create a copy of UserInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserInfoEntityCopyWith<_UserInfoEntity> get copyWith => __$UserInfoEntityCopyWithImpl<_UserInfoEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserInfoEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserInfoEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.token, token) || other.token == token)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn)&&(identical(other.loginState, loginState) || other.loginState == loginState));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phoneNumber,avatarUrl,token,refreshToken,expiresIn,loginState);

@override
String toString() {
  return 'UserInfoEntity(id: $id, name: $name, email: $email, phoneNumber: $phoneNumber, avatarUrl: $avatarUrl, token: $token, refreshToken: $refreshToken, expiresIn: $expiresIn, loginState: $loginState)';
}


}

/// @nodoc
abstract mixin class _$UserInfoEntityCopyWith<$Res> implements $UserInfoEntityCopyWith<$Res> {
  factory _$UserInfoEntityCopyWith(_UserInfoEntity value, $Res Function(_UserInfoEntity) _then) = __$UserInfoEntityCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, String? email, String? phoneNumber, String? avatarUrl, String? token, String? refreshToken, int expiresIn, LoginStateEnum? loginState
});




}
/// @nodoc
class __$UserInfoEntityCopyWithImpl<$Res>
    implements _$UserInfoEntityCopyWith<$Res> {
  __$UserInfoEntityCopyWithImpl(this._self, this._then);

  final _UserInfoEntity _self;
  final $Res Function(_UserInfoEntity) _then;

/// Create a copy of UserInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,Object? phoneNumber = freezed,Object? avatarUrl = freezed,Object? token = freezed,Object? refreshToken = freezed,Object? expiresIn = null,Object? loginState = freezed,}) {
  return _then(_UserInfoEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,expiresIn: null == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int,loginState: freezed == loginState ? _self.loginState : loginState // ignore: cast_nullable_to_non_nullable
as LoginStateEnum?,
  ));
}


}

// dart format on
