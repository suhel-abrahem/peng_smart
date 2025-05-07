part of 'items_bloc.dart';

@freezed
class ItemsState with _$ItemsState {
  const factory ItemsState.started() = Started;
  const factory ItemsState.changing() = Changing;
  const factory ItemsState.haveData(List<ItemsDataType> itemsDataType) =
      HaveData;
  const factory ItemsState.noData() = NoData;
  const factory ItemsState.failedToSaveLocally() = FailedToSaveLocally;
  const factory ItemsState.noInternetConnetion() = NoInternetConnetion;
  const factory ItemsState.uploaded() = Uploaded;
  const factory ItemsState.error() = Error;
}
