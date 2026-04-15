import 'package:smart_home/core/constants/api_constant.dart';
import 'package:smart_home/core/network/common_service.dart';

import '../models/create_room_input_model.dart';
import '../models/room_model.dart';
import 'room_remote_data_source.dart';

class RoomRemoteDataSourceImpl implements RoomRemoteDataSource {
  final CommonService _commonService;

  const RoomRemoteDataSourceImpl(this._commonService);

  @override
  Future<List<RoomModel>> getRoomsByHomeId({required String homeId}) async {
    final response = await _commonService.get(
      "${ApiConstant.getRoomByHomeIdEndpoint}/$homeId",
    );

    if (response == null || response.data == null) {
      throw Exception('Empty rooms response');
    }

    final List<dynamic> rawList = response.data['data'] ?? [];
    print(
      'Raw rooms data: $rawList',
    ); // Debug print to check the raw data structure
    return rawList
        .map((e) => RoomModel.fromJson(Map<String, dynamic>.from(e)))
        .toList();
  }

  @override
  Future<RoomModel> createRoom({required CreateRoomInputModel input}) async {
    final response = await _commonService.post(
      ApiConstant.createRoomEndpoint,
      data: input.toJson(),
    );

    if (response == null || response.data == null) {
      throw Exception('Empty create room response');
    }

    final rawData = response.data['data'] ?? response.data;
    return RoomModel.fromJson(Map<String, dynamic>.from(rawData));
  }
}
