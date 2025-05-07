// import 'dart:async';

// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:number_paginator/number_paginator.dart';
// import 'package:pluto_grid/pluto_grid.dart';

// class CustomFooter extends StatefulWidget {
//   final double? width;
//   final double? height;
//   final int maxRowNumber;
//   final List<int> rowsPerPage;

//   final int initialPage;
//   final ValueChanged<int> onChanged;

//   /// Decide whether to call the fetch function first.
//   final bool initialFetch;

//   /// Decide whether to handle sorting in the fetch function.
//   /// Default is true.
//   /// If this value is false, the list is sorted with the current grid loaded.
//   final bool fetchWithSorting;

//   /// Decide whether to handle filtering in the fetch function.
//   /// Default is true.
//   /// If this value is false,
//   /// the list is filtered while it is currently loaded in the grid.
//   final bool fetchWithFiltering;

//   /// Set the number of moves to the previous or next page button.
//   ///
//   /// Default is null.
//   /// Moves the page as many as the number of page buttons currently displayed.
//   ///
//   /// If this value is set to 1, the next previous page is moved by one page.
//   final int? pageSizeToMove;

//   /// A callback function that returns the data to be added.
//   final PlutoLazyPaginationFetch fetch;

//   final PlutoGridStateManager stateManager;
//   const CustomFooter({
//     super.key,
//     this.width,
//     this.height,
//     this.rowsPerPage = const [10, 20, 30, 50, 100, 500, 1000, 5000, 10000],
//     this.maxRowNumber = 0,
//     this.initialPage = 0,
//     this.initialFetch = true,
//     this.fetchWithSorting = true,
//     this.fetchWithFiltering = true,
//     this.pageSizeToMove,
//     required this.onChanged,
//     required this.fetch,
//     required this.stateManager,
//   });

//   @override
//   State<CustomFooter> createState() => _CustomFooterState();
// }

// class _CustomFooterState extends State<CustomFooter> {
//   late final StreamSubscription<PlutoGridEvent> _events;
//   late int chosenRowsPerPage;
//   int from = 1;
//   late int to = widget.rowsPerPage.first;
//   // int chosenPage = 1;

//   int _page = 0;

//   int _totalPage = 1;

//   bool _isFetching = false;

//   PlutoGridStateManager get stateManager => widget.stateManager;

//   @override
//   void initState() {
//     super.initState();

//     _page = widget.initialPage + 1;

//     if (widget.fetchWithSorting) {
//       stateManager.setSortOnlyEvent(true);
//     }

//     if (widget.fetchWithFiltering) {
//       stateManager.setFilterOnlyEvent(true);
//     }

//     _events = stateManager.eventManager!.listener(_eventListener);

//     if (widget.initialFetch) {
//       WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
//         setPage(widget.initialPage + 1);
//       });
//     }
//     chosenRowsPerPage = widget.rowsPerPage.first;
//     stateManager.setPageSize(chosenRowsPerPage);
//   }

//   @override
//   void dispose() {
//     _events.cancel();

//     super.dispose();
//   }

//   void _eventListener(PlutoGridEvent event) {
//     if (event is PlutoGridChangeColumnSortEvent ||
//         event is PlutoGridSetColumnFilterEvent) {
//       setPage(1);
//     }
//   }

//   void setPage(int page) async {
//     if (_isFetching) return;

//     _isFetching = true;

//     stateManager.setShowLoading(true, level: PlutoGridLoadingLevel.rows);

//     widget
//         .fetch(
//       PlutoLazyPaginationRequest(
//         page: page,
//         sortColumn: stateManager.getSortedColumn,
//         filterRows: stateManager.filterRows,
//       ),
//     )
//         .then((data) {
//       stateManager.scroll.bodyRowsVertical!.jumpTo(0);

//       stateManager.refRows.clearFromOriginal();
//       stateManager.insertRows(0, data.rows);

//       setState(() {
//         _page = page;

//         _totalPage = data.totalPage;

//         _isFetching = false;
//       });

//       stateManager.setShowLoading(false);
//     });
//   }

//   void calculateCurrentPagination() {
//     setState(() {
//       from = ((_page - 1) * stateManager.pageSize) + 1;
//       to = _page * stateManager.pageSize;
//     });
//   }

//   final NumberPaginatorController _controller = NumberPaginatorController();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: widget.width,
//       height: widget.height ?? 77.h,
//       decoration: BoxDecoration(
//           color: Theme.of(context).colorScheme.surface,
//           borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(9.r),
//               bottomRight: Radius.circular(9.r))),
//       child: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             //show row
//             Expanded(
//               flex: 2,
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 12.w),
//                 child: Row(
//                   children: [
//                     Text('show'.tr()),
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 12.w),
//                       child: DropDownWithLabel(
//                           labelPadding: EdgeInsets.zero,
//                           isLoading: false,
//                           dropDownWidth: 100.w,
//                           items: widget.rowsPerPage,
//                           value: chosenRowsPerPage,
//                           onChange: (perPage) {
//                             setState(() {});
//                             if (perPage == null) return;
//                             stateManager.setPageSize(perPage);
//                             setPage(stateManager.page);

//                             setState(() {
//                               chosenRowsPerPage = perPage;

//                               calculateCurrentPagination();
//                             });
//                           },
//                           stringConverter: (string) {
//                             return string.toString();
//                           }),
//                     ),
//                     const Text(LocaleKeys.pagination_paginationTitle)
//                         .tr(namedArgs: {
//                       'from': from.toString(),
//                       'to': to.toString(),
//                       'of': widget.maxRowNumber.toString()
//                     })
//                   ],
//                 ),
//               ),
//             ),
//             //pagination
//             Expanded(
//               flex: 1,
//               child: NumberPaginator(
//                 controller: _controller,
//                 onPageChange: (page) {
//                   setState(() {
//                     stateManager.setPage(page + 1);
//                     setPage(page + 1);
//                     _page = page + 1;
//                     calculateCurrentPagination();
//                   });
//                   widget.onChanged(page + 1);
//                 },
//                 numberPages: _totalPage,
//                 initialPage: widget.initialPage,
//                 config: NumberPaginatorUIConfig(
//                   // default height is 48
//                   height: 48.h,
//                   buttonShape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8.r),
//                   ),
//                   buttonSelectedForegroundColor:
//                       Theme.of(context).colorScheme.onBackground,
//                   buttonUnselectedForegroundColor: ColorManager.softGrey,
//                   buttonUnselectedBackgroundColor: Colors.transparent,
//                   buttonSelectedBackgroundColor:
//                       Theme.of(context).colorScheme.primaryContainer,
//                 ),
//                 // custom prev/next buttons using builder (ignored if showPrevButton/showNextButton is false)
//                 prevButtonBuilder: (context) => TextButton(
//                   onPressed: _controller.currentPage > 0
//                       ? () => _controller.prev()
//                       : null, // _controller must be passed to NumberPaginator
//                   child: Row(
//                     children: [
//                       const Icon(Icons.arrow_back_ios),
//                       Text(
//                         "previous".tr(),
//                       ),
//                     ],
//                   ),
//                 ),
//                 nextButtonBuilder: (context) => TextButton(
//                   onPressed: _controller.currentPage < _totalPage - 1
//                       ? () => _controller.next()
//                       : null, // _controller must be passed to NumberPaginator
//                   child: Row(
//                     children: [
//                       Text("next".tr()),
//                       const Icon(Icons.arrow_forward_ios),
//                     ],
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
