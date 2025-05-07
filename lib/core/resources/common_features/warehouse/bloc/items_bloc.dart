import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data_state.dart';
import '../../../data_type/items_data_type.dart';
import '../domain/usecases/items_usecase.dart';
import '../domain/usecases/set_items_usecase.dart';

part 'items_bloc.freezed.dart';
part 'items_event.dart';
part 'items_state.dart';

class ItemsBloc extends Bloc<ItemsEvent, ItemsState> {
  final ItemsUseCase _itemsUseCase;
  final SetItemsUsecase _setItemsUsecase;
  ItemsBloc(this._itemsUseCase, this._setItemsUsecase)
      : super(const Started()) {
    on<Initial>((event, emit) {
      emit(ItemsState.started());
    });
    on<Upload>((event, emit) async {
      emit(ItemsState.changing());
      final state = await _setItemsUsecase.call(params: event.itemsDataType);

      if (state is DataSuccess) {
        print("how:${state.data}");
        emit(ItemsState.uploaded());
      } else if (state is LocallySaveFailed) {
        emit(ItemsState.failedToSaveLocally());
      } else if (state is NoInternet) {
        emit(ItemsState.noInternetConnetion());
      } else {
        emit(ItemsState.error());
      }
    });
    on<Get>((event, emit) async {
      final state = await _itemsUseCase.call(params: event.itemsDataType);
      print('mes ${state.data}');
      if (state is DataSuccess) {
        if (state.data != null && (state.data?.isNotEmpty ?? false)) {
          emit(ItemsState.haveData(state.data ?? []));
        } else if (state.data == null || (state.data?.isEmpty ?? true)) {
          print('yup');
          emit(ItemsState.noData());
        } else if (state is LocallySaveFailed) {
          emit(ItemsState.failedToSaveLocally());
        } else if (state is NoInternet) {
          emit(ItemsState.noInternetConnetion());
        } else {
          emit(ItemsState.error());
        }
      } else {
        emit(ItemsState.error());
      }
    });
  }
}
