import 'package:smart_home/core/constants/api_constant.dart';
import 'package:smart_home/core/network/common_service.dart';
import 'package:smart_home/features/homes/data/datasources/home_remote_data_source.dart';

import '../models/create_home_input_model.dart';
import '../models/home_model.dart';

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final CommonService _commonService;

  const HomeRemoteDataSourceImpl(this._commonService);

  @override
  Future<List<HomeModel>> getMyHomes() async {
    final response = await _commonService.get(ApiConstant.getHomesEndpoint);

    if (response == null || response.data == null) {
      throw Exception('Empty homes response');
    }

    final List<dynamic> rawList = response.data['data'] ?? [];
    print(
      'Raw homes data: $rawList',
    ); // Debug print to check the raw data structure
    return rawList
        .map((e) => HomeModel.fromJson(Map<String, dynamic>.from(e)))
        .toList();
  }

  @override
  Future<HomeModel> createHome({required CreateHomeInputModel input}) async {
    final response = await _commonService.post(
      ApiConstant.addHomeEndpoint,
      data: input.toJson(),
    );

    if (response == null || response.data == null) {
      throw Exception('Empty create home response');
    }

    final rawData = response.data['data'] ?? response.data;
    return HomeModel.fromJson(Map<String, dynamic>.from(rawData));
  }
}
