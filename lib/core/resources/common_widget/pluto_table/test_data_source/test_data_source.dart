// import 'dart:math';

// import 'package:dashboard_and_storehouse/core/resources/common_widget/pluto_table/test_data_source/table_test_model.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:pluto_grid/pluto_grid.dart';
// import 'package:pluto_grid/src/model/pluto_column.dart';
// import 'package:pluto_grid/src/plugin/pluto_lazy_pagination.dart';

// import '../data_source/data_source.dart';


// class TestDataS extends CustomAsyncDataTableSource<TableTestModel> {
//   TestDataS(
//     super.data,
//     super.onRowTap,
//   );

//   @override
//   List<PlutoColumn> columns(BuildContext context) {
//     return [
//       PlutoColumn(
//         title: TestColumnField.id.title,
//         field: TestColumnField.id.name,
//         type: PlutoColumnType.number(),
//         renderer: (rendererContext) {
//           return Text(
//             rendererContext.cell.value.toString(),
//             style: data[rendererContext.rowIdx].action
//                 ? Theme.of(context).dataTableTheme.dataTextStyle
//                 : Theme.of(context).inactiveDataRow.dataTextStyle,
//           );
//         },
//       ),
//       PlutoColumn(
//         title: TestColumnField.name.title,
//         field: TestColumnField.name.name,
//         type: PlutoColumnType.text(),
//         renderer: (rendererContext) {
//           return Text(
//             rendererContext.cell.value,
//             style: data[rendererContext.rowIdx].action
//                 ? Theme.of(context).dataTableTheme.dataTextStyle
//                 : Theme.of(context).inactiveDataRow.dataTextStyle,
//           );
//         },
//       ),
//       PlutoColumn(
//         title: 'Action',
//         field: 'Action',
//         type: PlutoColumnType.text(),
//         renderer: (rendererContext) => IconStatusWidget(
//           onChanged: (isActive) {},
//           isActive: data[rendererContext.rowIdx].action,
//         ),
//       ),
//     ];
//   }

//   @override
//   Future<PlutoLazyPaginationResponse> fetch(
//       PlutoLazyPaginationRequest request) async {
//     List<PlutoRow> tempList = [];
//     List<PlutoRow> filteredList = [];

//     final page = request.page;
//     final pageSize = stateManager?.pageSize ?? 10;
//     final totalPage = (data.length / pageSize).ceil();

//     final start = (page - 1) * pageSize;

//     final end = start + pageSize;

//     for (var element in data) {
//       tempList.add(PlutoRow(cells: {
//         TestColumnField.id.name: PlutoCell(value: element.id),
//         TestColumnField.name.name: PlutoCell(value: element.name),
//         "Action": PlutoCell(
//           value: IconStatusWidget(onChanged: (isActive) {
//             print(isActive);
//           }),
//         )
//       }));
//     }
//     tempList.toList();
//     filteredList = tempList;

//     // If there is a sort state,
//     // you need to implement it so that the user gets data from the server
//     // according to the sort state.
//     //
//     // request.page is 1 when the sort state changes.
//     // This is because when the sort state changes,
//     // new data to which the sort state is applied must be loaded.
//     if (request.sortColumn != null && !request.sortColumn!.sort.isNone) {
//       filteredList = [...filteredList];

//       filteredList.sort((a, b) {
//         final sortA = request.sortColumn!.sort.isAscending ? a : b;
//         final sortB = request.sortColumn!.sort.isAscending ? b : a;

//         return request.sortColumn!.type.compare(
//           sortA.cells[request.sortColumn!.field]!.valueForSorting,
//           sortB.cells[request.sortColumn!.field]!.valueForSorting,
//         );
//       });
//     }
//     Iterable<PlutoRow> fetchedRows = filteredList.getRange(
//       max(0, start),
//       min(tempList.length, end),
//     );
//     await Future.delayed(const Duration(milliseconds: 500));

//     return Future.value(PlutoLazyPaginationResponse(
//       totalPage: totalPage,
//       rows: fetchedRows.toList(),
//     ));
//   }
// }

// enum TestColumnField {
//   id,
//   name;

//   String get title {
//     switch (this) {
//       case TestColumnField.id:
//         return 'Id';
//       case TestColumnField.name:
//         return 'Name';
//       default:
//         return 'Ez';
//     }
//   }
// }
