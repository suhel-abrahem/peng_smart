part of 'services_categories_bloc.dart';

@freezed
class ServicesCategoriesEvent with _$ServicesCategoriesEvent {
  const factory ServicesCategoriesEvent.started() = Started;
  const factory ServicesCategoriesEvent.upload(
      {required CategoryDataType data}) = Upload;
  const factory ServicesCategoriesEvent.get({required int bypass}) = Get;
}
