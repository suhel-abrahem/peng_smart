part of 'services_categories_bloc.dart';

@freezed
class ServicesCategoriesState with _$ServicesCategoriesState {
  const factory ServicesCategoriesState.initial() = Initial;
  const factory ServicesCategoriesState.changing() = Changing;
  const factory ServicesCategoriesState.noData() = NoData;
  const factory ServicesCategoriesState.haveData(
      {required List<CategoryDataType> data}) = HaveData;
  const factory ServicesCategoriesState.noInternet() = NoInternet;
  const factory ServicesCategoriesState.uploaded() = Uploaded;
  const factory ServicesCategoriesState.error() = Error;
}
