// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_rule_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRuleEntitiesImpl _$$UserRuleEntitiesImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRuleEntitiesImpl(
      ruleName: (json['ruleName'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList() ??
          const ["", "", ""],
      defaultLanguage: (json['defaultLanguage'] as num?)?.toInt() ?? 0,
      groupName: (json['groupName'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList() ??
          const ["الافتراضي", "گریمانە", "default"],
      ruleId: json['ruleId'] as String? ?? '',
      canAddUsers: json['canAddUsers'] as bool? ?? false,
      canRemoveUsers: json['canRemoveUsers'] as bool? ?? false,
      canAddClients: json['canAddClients'] as bool? ?? false,
      canRemoveClient: json['canRemoveClient'] as bool? ?? false,
      canBlockUsers: json['canBlockUsers'] as bool? ?? false,
      canBlockClients: json['canBlockClients'] as bool? ?? false,
      canAcceptRequisiteFromClient:
          json['canAcceptRequisiteFromClient'] as bool? ?? false,
      canAcceptRequisiteFromAnotherUser:
          json['canAcceptRequisiteFromAnotherUser'] as bool? ?? false,
      canEditItems: json['canEditItems'] as bool? ?? false,
      canEditBills: json['canEditBills'] as bool? ?? false,
      canShowBills: json['canShowBills'] as bool? ?? false,
      canEditDepartments: json['canEditDepartments'] as bool? ?? false,
      canMonitor: json['canMonitor'] as bool? ?? false,
      canOrder: json['canOrder'] as bool? ?? false,
      canEditOffers: json['canEditOffers'] as bool? ?? false,
      canEditAppFeatures: json['canEditAppFeatures'] as bool? ?? false,
      canEditRulesGroups: json['canEditRulesGroups'] as bool? ?? false,
      canEditHisRulesGroups: json['canEditHisRulesGroups'] as bool? ?? false,
    );

Map<String, dynamic> _$$UserRuleEntitiesImplToJson(
        _$UserRuleEntitiesImpl instance) =>
    <String, dynamic>{
      'ruleName': instance.ruleName,
      'defaultLanguage': instance.defaultLanguage,
      'groupName': instance.groupName,
      'ruleId': instance.ruleId,
      'canAddUsers': instance.canAddUsers,
      'canRemoveUsers': instance.canRemoveUsers,
      'canAddClients': instance.canAddClients,
      'canRemoveClient': instance.canRemoveClient,
      'canBlockUsers': instance.canBlockUsers,
      'canBlockClients': instance.canBlockClients,
      'canAcceptRequisiteFromClient': instance.canAcceptRequisiteFromClient,
      'canAcceptRequisiteFromAnotherUser':
          instance.canAcceptRequisiteFromAnotherUser,
      'canEditItems': instance.canEditItems,
      'canEditBills': instance.canEditBills,
      'canShowBills': instance.canShowBills,
      'canEditDepartments': instance.canEditDepartments,
      'canMonitor': instance.canMonitor,
      'canOrder': instance.canOrder,
      'canEditOffers': instance.canEditOffers,
      'canEditAppFeatures': instance.canEditAppFeatures,
      'canEditRulesGroups': instance.canEditRulesGroups,
      'canEditHisRulesGroups': instance.canEditHisRulesGroups,
    };
