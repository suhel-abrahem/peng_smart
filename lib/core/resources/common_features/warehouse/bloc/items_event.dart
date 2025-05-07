part of 'items_bloc.dart';

@freezed
class ItemsEvent with _$ItemsEvent {
  const factory ItemsEvent.initial() = Initial;
  const factory ItemsEvent.upload(ItemsDataType itemsDataType) = Upload;
  const factory ItemsEvent.get(ItemsDataType itemsDataType) = Get;
}
