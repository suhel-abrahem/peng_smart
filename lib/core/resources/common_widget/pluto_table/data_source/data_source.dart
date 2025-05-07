import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

abstract class CustomAsyncDataTableSource<T> {
  List<T> data = [];
  String search = '';
  String? fromDate = '';
  String? toDate = '';
  PlutoGridStateManager? stateManager;
  final Function(T item) onRowTap;

  List<PlutoColumn> columns(BuildContext context);

  Future<PlutoLazyPaginationResponse> fetch(PlutoLazyPaginationRequest request);

  CustomAsyncDataTableSource(
    this.data,
    this.onRowTap,
  );
}
