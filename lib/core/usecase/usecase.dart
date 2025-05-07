import 'dart:typed_data';

import '../resources/common_features/user_info/domain/entities/user_rule_entities.dart';
import '../resources/common_features/warehouse/domain/entities/items_entities.dart';
import 'package:flutter/foundation.dart';

import '../resources/common_features/warehouse/domain/entities/categories_entities.dart';

abstract class UseCase<Type, Params> {
  Future<Type> call({Params? params});
}

class NoParams {}

class CategoryDataType {
  final CategoriesEntities? categoriesEntities;
  final int? bypass;
  final Uint8List? image;
  final bool? isUploaded;
  final bool? isEdit;
  CategoryDataType({
    required this.categoriesEntities,
    this.bypass,
    this.image,
    this.isUploaded,
    this.isEdit,
  });
  CategoryDataType copyWith({
    CategoriesEntities? categoriesEntities,
    int? bypass,
    Uint8List? image,
    bool? isUploaded,
    bool? isEdit,
  }) {
    return CategoryDataType(
        categoriesEntities: categoriesEntities ?? this.categoriesEntities,
        bypass: bypass ?? this.bypass,
        image: image ?? this.image,
        isUploaded: isUploaded ?? this.isUploaded,
        isEdit: isEdit ?? isEdit);
  }

  factory CategoryDataType.fromJson(Map<String, dynamic> json) {
    return CategoryDataType(
        categoriesEntities:
            CategoriesEntities.fromJson(json["categoriesEntities"] ?? {}),
        bypass: json["bypass"],
        image: Uint8List.fromList((json["image"] ?? []).cast<int>()),
        isUploaded: json["isUploaded"],
        isEdit: json["isEdit"]);
  }
  Map<String, dynamic> toJson() {
    return {
      "categoriesEntities": categoriesEntities,
      "bypass": bypass,
      "image": image
    };
  }
}



class UserRuleDataType {
  //set group name only to get the specific group
  //other wise the get method will bring all the groups.
  //but its not optional with add method!
  final String? groupName;
  final UserRuleEntities? userRuleEntities;
  final int? bypass;
  final bool? isUploaded;
  final bool? isEdit;
  UserRuleDataType({
    this.groupName,
    this.userRuleEntities,
    this.bypass,
    this.isUploaded,
    this.isEdit,
  });
  UserRuleDataType copyWith({
    String? groupName,
    UserRuleEntities? userRuleEntities,
    int? bypass,
    bool? isUploaded,
    bool? isEdit,
  }) {
    return UserRuleDataType(
      groupName: groupName ?? this.groupName,
      userRuleEntities: userRuleEntities ?? this.userRuleEntities,
      bypass: bypass ?? this.bypass,
      isEdit: isEdit ?? this.isEdit,
      isUploaded: isUploaded ?? this.isUploaded,
    );
  }

  factory UserRuleDataType.fromJson(Map<String, dynamic> json) {
    return UserRuleDataType(
      groupName: json["groupName"],
      userRuleEntities: json["userRuleEntities"],
      bypass: json["bypass"],
      isEdit: json["isEdit"],
      isUploaded: json["isUploaded"],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      "groupName": groupName,
      "userRuleEntities": userRuleEntities,
      "bypass": bypass,
      "isEdit": isEdit,
      "isUploaded": isUploaded,
    };
  }
}
