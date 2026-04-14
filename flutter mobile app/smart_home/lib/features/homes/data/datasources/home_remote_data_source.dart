import '../models/create_home_input_model.dart';
import '../models/home_model.dart';

abstract class HomeRemoteDataSource {
  Future<List<HomeModel>> getMyHomes();
  Future<HomeModel> createHome({required CreateHomeInputModel input});
}
