import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/font_constants.dart';
import '../../../../enums/line_chart_type_enum.dart';
import '../../../chart_model/line_chart_model.dart';

class CostumeLineChart extends StatefulWidget {
  final String? title;
  final double? width, containerWidth;
  final double? height, containerHeight;

  final List<LineChartModel>? barsInfo;
  final double? minX, maxX, minY, maxY;
  const CostumeLineChart(
      {super.key,
      this.width,
      this.height,
      this.barsInfo,
      this.minX,
      this.maxX,
      this.minY,
      this.maxY,
      this.containerWidth,
      this.containerHeight,
      this.title});

  @override
  State<CostumeLineChart> createState() => _CostumeLineChartState();
}

class _CostumeLineChartState extends State<CostumeLineChart> {
  List<LineChartBarData> lineChartBarData = [];
  LineChartType chartType = LineChartType.oneLine;
  final List<Color> defaultColors = [
    Colors.white,
    const Color.fromARGB(255, 204, 2, 255),
    const Color.fromARGB(255, 249, 44, 102),
    const Color.fromARGB(255, 139, 244, 41),
    const Color.fromARGB(255, 21, 176, 237),
  ];
  List<Color?> barsColor = [];
  @override
  void initState() {
    int index = 0;
    lineChartBarData = [];

    for (int i = 0; i < (widget.barsInfo?.length ?? 0); i++) {
      barsColor.add(((widget.barsInfo![i].color != Colors.blueAccent
              ? (widget.barsInfo?.elementAtOrNull(i)?.color)
              : null) ??
          defaultColors.elementAtOrNull(i)));
    }

    setState(() {
      chartType = widget.barsInfo?.length == 1
          ? LineChartType.oneLine
          : LineChartType.multiLine;
      widget.barsInfo?.forEach((element) {
        lineChartBarData.add(LineChartBarData(
            spots: element.spots,
            color: barsColor[index],
            isCurved: true,
            dotData: FlDotData(show: true),
            belowBarData: chartType == LineChartType.oneLine
                ? BarAreaData(
                    show: true, color: barsColor[index]?.withOpacity(0.3))
                : null,
            barWidth: 12.w));
        index++;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: widget.title ?? '',
      child: Container(
        width: widget.containerWidth,
        height: widget.containerHeight,
        padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 20.w),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(30.r)),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Tooltip(
                message: widget.title ?? '',
                child: Text(
                  widget.title ?? '',
                  style: Theme.of(context).textTheme.titleLarge,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Expanded(
                    flex: 3,
                    child: LineChart(
                      LineChartData(
                          lineBarsData: lineChartBarData,
                          minX: widget.minX,
                          maxX: widget.maxX,
                          minY: widget.minY,
                          maxY: widget.maxY,
                          borderData: FlBorderData(show: false),
                          gridData: const FlGridData(show: false),
                          titlesData: FlTitlesData(
                              bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                reservedSize: 20.h,
                                showTitles: true,
                                getTitlesWidget: (value, meta) {
                                  String output = '';
                                  switch (value.toInt()) {
                                    case 0:
                                      output = "Jan";
                                    case 1:
                                      output = "Feb";
                                    case 2:
                                      output = "Mar";
                                    case 3:
                                      output = "Apr";
                                    case 4:
                                      output = "May";
                                    case 5:
                                      output = "Jun";
                                    case 6:
                                      output = "Jul";
                                    case 7:
                                      output = "Aug";
                                    case 8:
                                      output = "Sep";
                                    case 9:
                                      output = "Oct";
                                    case 10:
                                      output = "Nov";
                                    case 11:
                                      output = "Dec";
                                  }
                                  return Text(
                                    output,
                                    style: TextStyle(
                                      fontFamily: FontConstants.notoSans,
                                      fontSize: 12,
                                    ),
                                  );
                                },
                              )),
                              topTitles: AxisTitles(sideTitles: SideTitles()),
                              rightTitles: AxisTitles(
                                  sideTitles: SideTitles(reservedSize: 20.w)),
                              leftTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                reservedSize: 50.w,
                                showTitles: true,
                                getTitlesWidget: (value, meta) {
                                  String output = '';
                                  if (value < 1000) {
                                    output = value.toString();
                                  } else if (value < 1000000) {
                                    output = "${value / 1000.0}K";
                                  } else {
                                    output = "${value / 1000000.0}M";
                                  }
                                  return Text(output);
                                },
                              )))),
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Expanded(
                    flex: 1,
                    child: ListView.builder(
                        itemCount: barsColor.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: 12.h),
                            child: Tooltip(
                              message: widget.barsInfo
                                      ?.elementAtOrNull(index)
                                      ?.name ??
                                  '',
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 30.w,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: barsColor[index] ??
                                                Colors.blueAccent,
                                            width: 10.h),
                                        shape: BoxShape.circle),
                                  ),
                                  Expanded(flex: 1, child: SizedBox()),
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      widget.barsInfo
                                              ?.elementAtOrNull(index)
                                              ?.name ??
                                          '',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium
                                          ?.copyWith(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14.sp),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
