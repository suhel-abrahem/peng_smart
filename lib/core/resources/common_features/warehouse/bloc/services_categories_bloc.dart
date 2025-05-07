import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../usecase/usecase.dart';
import '../../../data_state.dart' as ds;
import '../domain/usecases/services_categories_usecase.dart';
import '../domain/usecases/set_services_category_usecase.dart';

part 'services_categories_bloc.freezed.dart';
part 'services_categories_event.dart';
part 'services_categories_state.dart';

class ServicesCategoriesBloc
    extends Bloc<ServicesCategoriesEvent, ServicesCategoriesState> {
  final ServicesCategoriesUseCase _servicesUseCase;

  final SetServicesCategoriesUseCase _setServicesUseCase;

  ServicesCategoriesBloc(
    this._servicesUseCase,
    this._setServicesUseCase,
  ) : super(const Initial()) {
    List<CategoryDataType>? data = [];
    on<Started>((event, emit) async {
      emit(const ServicesCategoriesState.initial());
    });
    on<Upload>((event, emit) async {
      emit(const ServicesCategoriesState.changing());

      final state = await _setServicesUseCase.call(params: event.data);
      if (state is ds.DataSuccess) {
        emit(const ServicesCategoriesState.uploaded());
      } else if (state is ds.NoInternet) {
        emit(const ServicesCategoriesState.noInternet());
      } else {
        emit(const ServicesCategoriesState.error());
      }
    });
    on<Get>((event, emit) async {
      print('penguin');
      emit(const ServicesCategoriesState.changing());

      final state = await _servicesUseCase.call(params: event.bypass);
      print("state:${state}");
      if (state is ds.DataSuccess) {
        data = state.data;
        print(data);
        if (data != null && data!.isNotEmpty) {
          emit(ServicesCategoriesState.haveData(data: data ?? []));
        } else {
          print(data);
          emit(const ServicesCategoriesState.noData());
        }
      } else if (state is ds.NoInternet) {
        emit(const ServicesCategoriesState.noInternet());
      } else {
        emit(const ServicesCategoriesState.error());
      }
    });
  }
}
