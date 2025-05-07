import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:connectivity_plus/connectivity_plus.dart';
import '../../../../../../config/app/app_preferences.dart';
import '../../../../../constants/app_parts_constants.dart';
import '../../../../../injection_container.dart';
import '../../../../data_type/items_data_type.dart';
import '../../domain/entities/items_entities.dart';
import '../../domain/repositories/items_repository.dart';
import '../../../../common_service/common_service.dart';
import '../../../../connectivity/check_connectivity.dart';
import '../../../../data_state.dart';
import '../../../../../usecase/usecase.dart';

class ItemsRepositoryImplements implements ItemsRepository {
  final CommonService _commonService;
  final CheckConnectivity _checkConnectivity;

  ItemsRepositoryImplements(
      {required CommonService commonService,
      required CheckConnectivity checkConnectivity})
      : _commonService = commonService,
        _checkConnectivity = checkConnectivity;

  ConnectivityResult connectivityResult = ConnectivityResult.none;

  @override
  Future<DataState<void>> setItems(
      {required ItemsDataType? itemsDataType}) async {
    // print(
    //     "can:$canSync,ez:${itemsDataType?.bypass},ezz:${itemsDataType?.categoryId},Ez:${itemsDataType?.itemsEntities}");
    await _checkConnectivity
        .checkConnectivity()
        .then((newState) => connectivityResult = newState);
    if (itemsDataType?.bypass == 0) {
      if (connectivityResult == ConnectivityResult.none) {
        return NoInternet();
      } else {
        print("cid:${itemsDataType?.categoryId}");
        try {
          if (itemsDataType?.categoryId != null) {
            await _commonService
                .setDataToFirestore(
                    collectionName: itemsDataType!.categoryId.toString(),
                    data: itemsDataType.itemsEntities,
                    id: itemsDataType.itemsEntities?.id)
                .then((ez) async {
              await _commonService.setDataToStorage(
                  path:
                      "${AppPartsConstants.items}/${itemsDataType?.categoryId}/${itemsDataType?.itemsEntities?.id}",
                  data: Uint8List.fromList(itemsDataType.image ?? []));
            });

            ItemsDataType? uploadedItem =
                itemsDataType?.copyWith(isUploaded: true);
            List<String>? locallyItems = (getItInstance<AppPreferences>()
                    .getDataLocally(itemsDataType!.categoryId.toString())) ??
                [];

            locallyItems.add(jsonEncode(uploadedItem));

            getItInstance<AppPreferences>().setDataLocally(
                key: itemsDataType.categoryId.toString(),
                dataAsJson: locallyItems);
            return const DataSuccess();
          } else {
            return DataFailed(message: "cId:null");
          }
        } catch (e) {
          return DataFailed(message: e.toString());
        }
      }
    } else {
      if (itemsDataType?.categoryId != null) {
        List<String> locallyData = getItInstance<AppPreferences>()
                .getDataLocally(itemsDataType!.categoryId.toString()) ??
            [];
        locallyData.add(jsonEncode(itemsDataType));
        getItInstance<AppPreferences>().setDataLocally(
            key: itemsDataType.categoryId.toString(), dataAsJson: locallyData);
        return const DataSuccess();
      } else {
        return LocallySaveFailed();
      }
    }
  }

  @override
  Future<DataState<List<ItemsDataType>>> getItems(
      {required ItemsDataType? itemParams}) async {
    List<String>? itemsAsList = [];
    List<ItemsDataType>? uploadedItems = [];

    await _checkConnectivity
        .checkConnectivity()
        .then((newState) => connectivityResult = newState);
    if ((itemParams?.bypass == 0)) {
      if (connectivityResult == ConnectivityResult.none) {
        return NoInternet();
      } else {
        Completer<DataState<List<ItemsDataType>>> getItemsCompleter =
            Completer();
        try {
          print(itemParams?.categoryId.toString());
          final itemsAsStream = await _commonService.getDataFromFirestore(
              collectionName: itemParams?.categoryId.toString() ?? "");

          StreamSubscription? itemsSubscription;
          itemsSubscription = itemsAsStream.data?.listen(
            (List<dynamic> docs) async {
              DataState<Uint8List?>? image;
              for (var doc in docs) {
                final data = doc.data();

                try {
                  image = await _commonService.getFileFromStore(
                    "${AppPartsConstants.servicesImagePath}/${itemParams?.categoryId}/${itemParams?.itemsEntities?.id}",
                  );
                } catch (e) {
                  DataFailed(message: e.toString());
                }
                print("dart is stupid${data}");
                uploadedItems.add(ItemsDataType(
                    itemsEntities: ItemsEntities.fromJson(data),
                    image: image?.data,
                    isUploaded: true,
                    isEdit: false,
                    categoryId: itemParams?.categoryId,
                    categoryName: itemParams?.categoryName));
              }
              getItemsCompleter.complete(DataSuccess(data: uploadedItems));
              itemsSubscription?.cancel();
            },
            onError: (dynamic e) {
              getItemsCompleter.completeError(e.toString());
            },
          );
        } catch (e) {
          return DataFailed(message: e.toString());
        }
        if (itemParams?.categoryId != null) {
          try {
            List<String>? locallyData = getItInstance<AppPreferences>()
                .getDataLocally(itemParams!.categoryId.toString());
            print('ezzzzzzzzz:${locallyData} ');
            locallyData?.forEach((element) {
              if (ItemsDataType.fromJson(jsonDecode(element)).isUploaded ==
                  false) {
                uploadedItems.add(ItemsDataType.fromJson(jsonDecode(element)));
              }
            });

            for (var element in uploadedItems) {
              itemsAsList.add(jsonEncode(element.toJson()));
            }
            print("we ${itemsAsList}");
            getItInstance<AppPreferences>().setDataLocally(
                key: itemParams.categoryId.toString(), dataAsJson: itemsAsList);
          } catch (e) {
            return LocallySaveFailed();
          }
        } else {
          return LocallySaveFailed();
        }
        print("dataez: ${getItemsCompleter.future}");
        return getItemsCompleter.future;
      }
    } else {
      if (itemParams?.categoryId != null) {
        final data = getItInstance<AppPreferences>()
            .getDataLocally(itemParams!.categoryId.toString());
        List<ItemsDataType> itemsAsList = [];
        data?.forEach((items) =>
            itemsAsList.add(ItemsDataType.fromJson(jsonDecode(items))));
        // final uploadedItem = itemParams.
        // itemsAsList.add()
        return DataSuccess(data: itemsAsList);
      } else {
        return const DataFailed(message: "Failed to get data from your device");
      }
    }
  }
}
