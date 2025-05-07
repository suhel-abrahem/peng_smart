// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:pluto_grid/pluto_grid.dart';


// class PlutoTableWidget<T> extends StatefulWidget {
//   final CustomAsyncDataTableSource<T> dataSource;
//   final double? width;
//   final double? height;
//   final double? footerHeight;
//   final double? headerHeight;
//   final Widget? headerAction;
//   const PlutoTableWidget(
//       {super.key,
//       required this.dataSource,
//       this.height,
//       this.width,
//       this.footerHeight,
//       this.headerHeight,
//       this.headerAction});

//   @override
//   State<PlutoTableWidget> createState() => _PlutoTableWidgetState();
// }

// class _PlutoTableWidgetState extends State<PlutoTableWidget> {
//   late PlutoGridStateManager stateManager;
//   final List<int> perPage = [10, 20, 30, 50, 100, 1000, 2000, 10000];
//   late int currentPerPage = perPage.first;
//   int from = 1;
//   int currentPage = 1;
//   ValueNotifier<int> to = ValueNotifier<int>(10);
//   @override
//   void initState() {
//     super.initState();
//   }

//   void handleShowPopup(BuildContext context) {
//     stateManager.showSetColumnsPopup(context);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         //header
//         Container(
//           width: widget.width,
//           height: widget.headerHeight ?? 61.h,
//           decoration: BoxDecoration(
//             color: Theme.of(context).colorScheme.primaryContainer,
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Expanded(flex: 2, child: widget.headerAction ?? const SizedBox()),
//               Expanded(
//                   child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   CustomTextFiled.search(
//                     height: 40.h,
//                   ),
//                   SizedBox(
//                     width: 58.w,
//                     height: 40.h,
//                     child: ElevatedButton(
//                         style: Theme.of(context)
//                             .surfaceElevatedButtonTheme
//                             .copyWith(
//                                 padding:
//                                     MaterialStatePropertyAll(EdgeInsets.zero)),
//                         onPressed: () {
//                           handleShowPopup(context);
//                         },
//                         child: Icon(SarwaranIcons.edit)),
//                   )
//                 ],
//               ))
//             ],
//           ),
//         ),
//         SizedBox(
//           width: widget.width,
//           height: widget.height,
//           child: PlutoGrid(
//             columns: widget.dataSource.columns(context),
//             rows: [
//               // PlutoRow(cells: {'': PlutoCell(value: 'a')})
//             ],
//             onLoaded: (PlutoGridOnLoadedEvent event) {
//               widget.dataSource.stateManager = event.stateManager;
//               stateManager = event.stateManager;

//               stateManager.setAutoEditing(false);
//               stateManager.setEditing(false);

//               stateManager.setSelectingMode(PlutoGridSelectingMode.none);
//               stateManager.setShowColumnFilter(false);
//             },
//             onChanged: (PlutoGridOnChangedEvent event) {
//               print(event);
//             },
//             configuration: PlutoGridConfiguration(
//                 style: PlutoGridStyleConfig(
//                     enableColumnBorderVertical: false,
//                     enableRowColorAnimation: true,
//                     evenRowColor: Theme.of(context).colorScheme.background,
//                     oddRowColor: Theme.of(context).scaffoldBackgroundColor,
//                     gridBackgroundColor: Theme.of(context)
//                             .dataTableTheme
//                             .dataRowColor
//                             ?.resolve({MaterialState.selected}) ??
//                         Colors.white,
//                     cellColorGroupedRow: Theme.of(context)
//                         .dataTableTheme
//                         .dataRowColor
//                         ?.resolve({MaterialState.selected}),
//                     enableGridBorderShadow: true,
//                     gridBorderColor:
//                         Theme.of(context).colorScheme.primaryContainer,
//                     gridBorderRadius: BorderRadius.only(
//                         bottomLeft: Radius.circular(9.r),
//                         bottomRight: Radius.circular(9.r)),
//                     gridPopupBorderRadius:
//                         BorderRadius.all(Radius.circular(9.r)))),
//             createFooter: (stateManager) {
//               print(currentPage);
//               return CustomFooter(
//                 width: widget.width,
//                 height: widget.footerHeight,
//                 fetch: widget.dataSource.fetch,
//                 onChanged: (currentPage) {
//                   this.currentPage = currentPage;
//                 },
//                 maxRowNumber: widget.dataSource.data.length,
//                 stateManager: stateManager,
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
