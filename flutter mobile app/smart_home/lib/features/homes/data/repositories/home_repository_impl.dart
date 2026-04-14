import 'package:dio/dio.dart';
import 'package:smart_home/core/data_state/data_state.dart';
import 'package:smart_home/core/network/dio_exception_mapper.dart';
import 'package:smart_home/features/homes/data/models/home_model.dart';

import '../../domain/entities/home_entity.dart';
import '../../domain/repositories/home_repository.dart';
import '../datasources/home_remote_data_source.dart';
import '../models/create_home_input_model.dart';


class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource _homeRemoteDataSource;

  const HomeRepositoryImpl(this._homeRemoteDataSource);

  @override
  Future<DataState<List<HomeEntity>>> getMyHomes() async {
    try {
      final result = await _homeRemoteDataSource.getMyHomes();
      return DataSuccess(data: result.map((e) => e.toEntity()).toList());
    } on DioException catch (e) {
      return mapDioExceptionToDataState<List<HomeEntity>>(e);
    } catch (e) {
      return DataFailed(error: e.toString());
    }
  }

  @override
  Future<DataState<HomeEntity>> createHome({
    required CreateHomeInputModel input,
  }) async {
    try {
      final result = await _homeRemoteDataSource.createHome(input: input);
      return DataSuccess(data: result.toEntity());
    } on DioException catch (e) {
      return mapDioExceptionToDataState<HomeEntity>(e);
    } catch (e) {
      return DataFailed(error: e.toString());
    }
  }
}
