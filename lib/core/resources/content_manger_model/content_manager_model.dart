import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_manager_model.freezed.dart';
part 'content_manager_model.g.dart';

@freezed
class ContentManagerModel with _$ContentManagerModel {
  const factory ContentManagerModel({
    required dynamic data,
    required String? collectionName,
    required String? offlineKey,
    @Default("") String? id,
  }) = _ContentManagerModel;
  factory ContentManagerModel.fromJson(Map<String, dynamic> json) =>
      _$ContentManagerModelFromJson(json);
}
