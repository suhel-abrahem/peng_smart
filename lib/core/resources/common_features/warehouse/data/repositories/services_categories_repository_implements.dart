import 'dart:async';
import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import '../../domain/entities/categories_entities.dart';
import '../../../../../../config/app/app_preferences.dart';
import '../../../../../constants/app_parts_constants.dart';

import '../../../../../injection_container.dart';
import '../../domain/entities/id_entities.dart';

import '../../../../common_service/common_service.dart';
import '../../../../connectivity/check_connectivity.dart';
import '../../../../data_state.dart';

import '../../../../../usecase/usecase.dart';
import '../../domain/repositories/services_categories_repository.dart';

class ServicesCategoriesRepositoryImplements
    implements ServicesCategoriesRepository {
  final CommonService _commonService;
  final CheckConnectivity _checkConnectivity;

  ServicesCategoriesRepositoryImplements(
      this._commonService, this._checkConnectivity);
  @override
  Future<DataState<List<CategoryDataType>>> getCategories(
      {int? bypass = 0}) async {
    ConnectivityResult connectivityResult = ConnectivityResult.none;
    await _checkConnectivity
        .checkConnectivity()
        .then((value) => connectivityResult = value);
    if (bypass == 0) {
      try {
        if (connectivityResult == ConnectivityResult.none) {
          return NoInternet();
        }
        DataState<Stream<List>> categoriesAsStreams =
            await _commonService.getDataFromFirestore(
                collectionName: AppPartsConstants.servicesCategories);

        List<CategoryDataType> categoriesInfo = [];

        Completer<DataState<List<CategoryDataType>>> getCateCompleter =
            Completer<DataState<List<CategoryDataType>>>();

        try {
          StreamSubscription<List<dynamic>>? dataSubscription;

          dataSubscription =
              categoriesAsStreams.data?.listen((List<dynamic> docs) async {
            for (var doc in docs) {
              var data = await doc.data();

              var image = await _commonService.getFileFromStore(
                  "${AppPartsConstants.servicesCategoriesImagePath}/${data["id"]}");
              categoriesInfo.add(CategoryDataType(
                  categoriesEntities: CategoriesEntities.fromJson(data),
                  image: image.data,
                  isUploaded: true,
                  isEdit: false));
            }
            List<CategoryDataType> uploadedCategories = categoriesInfo;
            List<String>? categoriesASList = [];
            List<String>? locallyData = getItInstance<AppPreferences>()
                .getDataLocally(AppPartsConstants.servicesCategories);

            locallyData?.forEach((element) {
              if (element.isNotEmpty &&
                  CategoryDataType.fromJson(jsonDecode(element)).isUploaded ==
                      false) {
                uploadedCategories
                    .add(CategoryDataType.fromJson(jsonDecode(element)));
              }
            });

            for (var element in uploadedCategories) {
              categoriesASList.add(jsonEncode(element.toJson()));
            }

            await getItInstance<AppPreferences>().setDataLocally(
                key: AppPartsConstants.servicesCategories,
                dataAsJson: categoriesASList);

            getCateCompleter.complete(DataSuccess(data: categoriesInfo));
            dataSubscription
                ?.cancel(); // Cancel the subscription after processing data
          }, onError: (dynamic error) {
            getCateCompleter
                .completeError(DataFailed(message: error.toString()));
          });
        } catch (e) {
          getCateCompleter.completeError(DataFailed(message: e.toString()));
        }

        return getCateCompleter.future;
      } catch (e) {
        if (connectivityResult == ConnectivityResult.none) {
          return NoInternet();
        }

        return DataFailed(message: e.toString());
      }
    } else {
      try {
        Completer<DataSuccess<List<CategoryDataType>>> getLocallyCategories =
            Completer();

        List<String>? data = getItInstance<AppPreferences>()
            .getDataLocally(AppPartsConstants.servicesCategories);

        List<CategoryDataType> categories = [];
        data?.forEach((element) =>
            categories.add(CategoryDataType.fromJson(jsonDecode(element))));
        getLocallyCategories.complete(DataSuccess(data: categories));
        return getLocallyCategories.future;
      } catch (e) {
        return DataFailed(message: e.toString());
      }
    }
  }

  @override
  Future<DataState<void>> setCategory({CategoryDataType? params}) async {
    print(params?.categoriesEntities);

    ConnectivityResult connectivityResult = ConnectivityResult.none;
    await _checkConnectivity
        .checkConnectivity()
        .then((value) => connectivityResult = value);

    if ((params?.bypass == 0)) {
      try {
        if (connectivityResult == ConnectivityResult.none) {
          return NoInternet();
        }
        Completer<DataState<void>> completer = Completer<DataState<void>>();
        // Completer<int> idCompleter = Completer<int>();
        CategoryDataType? categoriesDataType = params;
        DataState<Stream<List>> idAsStream =
            await _commonService.getDataFromFirestore(
                collectionName: AppPartsConstants.servicesCategoriesId,
                id: "id");
        int? id = 0;
        StreamSubscription? idSub;
        idSub = idAsStream.data?.listen((List event) async {
          if (!(params?.isEdit ?? false)) {
            if (event.firstOrNull != null) {
              var data = await event.firstOrNull;
              if (data != null && data["id"] != null) {
                id = (data["id"] ?? 0) + 1;
              } else {
                id = 0;
              }
            } else {
              id = 0;
            }
          } else {
            id = int.tryParse(params?.categoriesEntities?.id ?? '') ?? 0;
          }
          // idCompleter.complete(id);
          categoriesDataType = categoriesDataType?.copyWith(
              categoriesEntities: categoriesDataType?.categoriesEntities
                  ?.copyWith(id: id.toString()));
          idSub?.cancel();

          await _commonService
              .setDataToFirestore(
                  collectionName: AppPartsConstants.servicesCategories,
                  id: id.toString(),
                  data: categoriesDataType?.categoriesEntities)
              .whenComplete(() async {
            await _commonService
                .setDataToFirestore(
                    collectionName: AppPartsConstants.servicesCategoriesId,
                    data: IdEntities.fromJson({"id": id}),
                    id: "id")
                .whenComplete(() async {
              await _commonService
                  .setDataToStorage(
                      path:
                          "${AppPartsConstants.servicesCategoriesImagePath}/$id",
                      data: params?.image)
                  .whenComplete(() {
                try {
                  completer.complete(const DataSuccess());
                } catch (e) {
                  completer.completeError(DataFailed(message: e.toString()));
                }
              });
            });
          });
        });
        if (params?.categoriesEntities?.id != null) {
          try {
            List<String>? locallyData = getItInstance<AppPreferences>()
                    .getDataLocally(AppPartsConstants.servicesCategories) ??
                [];
            if (params != null) {
              locallyData.add(jsonEncode(params.copyWith(isUploaded: true)));
            }
            getItInstance<AppPreferences>().setDataLocally(
                key: AppPartsConstants.servicesCategories,
                dataAsJson: locallyData);
          } catch (e) {
            return LocallySaveFailed();
          }
        } else {
          return LocallySaveFailed();
        }
        return completer.future;
      } catch (e) {
        if (connectivityResult == ConnectivityResult.none) {
          return NoInternet();
        }
        return DataFailed(message: e.toString());
      }
    } else {
      try {
        List<String>? locallyData = getItInstance<AppPreferences>()
            .getDataLocally(AppPartsConstants.servicesCategories);
        locallyData?.add(jsonEncode(params));
        getItInstance<AppPreferences>().setDataLocally(
            key: AppPartsConstants.servicesCategories,
            dataAsJson: locallyData ?? []);
        return const DataSuccess();
        // List<String>? data = getItInstance<AppPreferences>()
        //     .getDataLocally(SharedPreferencesKeys.PREFS_KEY_LOCALLY_CATEGORIES);
        // data?.add((params?.categoriesDataType)!.toJson().toString());
        // await getItInstance<AppPreferences>().setDataLocally(
        //     key: SharedPreferencesKeys.PREFS_KEY_LOCALLY_CATEGORIES,
        //     dataAsJson: data ?? []);
        // return const DataSuccess();
      } catch (e) {
        return DataFailed(message: e.toString());
      }
    }
  }
}
