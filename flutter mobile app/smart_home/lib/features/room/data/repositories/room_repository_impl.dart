import 'package:dio/dio.dart';
import 'package:smart_home/core/data_state/data_state.dart';
import 'package:smart_home/core/network/dio_exception_mapper.dart';
import 'package:smart_home/features/room/data/models/room_model.dart';

import '../../domain/entities/room_entity.dart';
import '../../domain/repositories/room_repository.dart';
import '../datasources/room_remote_data_source.dart';


class RoomRepositoryImpl implements RoomRepository {
  final RoomRemoteDataSource _remoteDataSource;

  const RoomRepositoryImpl(this._remoteDataSource);

  @override
  Future<DataState<List<RoomEntity>>> getRoomsByHomeId({
    required String homeId,
  }) async {
    try {
      final result = await _remoteDataSource.getRoomsByHomeId(homeId: homeId);
      return DataSuccess(
        data: result.map((e) => e.toEntity()).toList(),
      );
    } on DioException catch (e) {
      return mapDioExceptionToDataState<List<RoomEntity>>(e);
    } catch (e) {
      return DataFailed(error: e.toString());
    }
  }
}