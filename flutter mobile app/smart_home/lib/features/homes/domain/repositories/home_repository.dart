import 'package:smart_home/core/data_state/data_state.dart';

import '../entities/home_entity.dart';
import '../../data/models/create_home_input_model.dart';

abstract class HomeRepository {
  Future<DataState<List<HomeEntity>>> getMyHomes();
  Future<DataState<HomeEntity>> createHome({
    required CreateHomeInputModel input,
  });
}
