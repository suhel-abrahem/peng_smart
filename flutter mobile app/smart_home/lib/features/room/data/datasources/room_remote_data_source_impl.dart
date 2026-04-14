import 'package:smart_home/core/constants/api_constant.dart';
import 'package:smart_home/core/network/common_service.dart';
import 'package:smart_home/features/room/data/datasources/room_remote_data_source.dart';

import '../models/room_model.dart';


class RoomRemoteDataSourceImpl implements RoomRemoteDataSource {
  final CommonService _commonService;

  const RoomRemoteDataSourceImpl(this._commonService);

  @override
  Future<List<RoomModel>> getRoomsByHomeId({
    required String homeId,
  }) async {
    final response = await _commonService.get(
      "${ApiConstant.getRoomsEndpoint}/$homeId",
    );

    if (response == null || response.data == null) {
      throw Exception('Empty rooms response');
    }

    final List<dynamic> rawList = response.data['data'] ?? [];

    return rawList
        .map((e) => RoomModel.fromJson(Map<String, dynamic>.from(e)))
        .toList();
  }
}