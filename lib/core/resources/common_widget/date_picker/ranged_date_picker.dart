import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../generated/locale_keys.g.dart';
import '../../../enums/psition_enum.dart';
import 'date_picker.dart';

class RangedDatePicker extends StatefulWidget {
  final Position labelPosition;
  final String? label;
  final BorderRadiusGeometry? startDateBorderRadios;
  final BorderRadiusGeometry? endDateBorderRadios;
  final double? containerWidth;
  final double? containerHeight;
  final double? startDateWidth;
  final double? startDateHeight;
  final double? endDateWidth;
  final double? endDateHeight;
  final double? clearButtonWidth;
  final double? clearButtonHeight;
  final Function({DateTime? date, String? dateAsString}) startDateOnChanged;
  final Function({DateTime? date, String? dateAsString}) endDateOnChanged;
  final EdgeInsetsGeometry? labelPadding;
  final EdgeInsetsGeometry? datePickerPadding;
  final DateFormat? format;
  final DateTime? startDate;
  final DateTime? endDate;
  const RangedDatePicker({
    super.key,
    this.labelPosition = Position.upper,
    this.label,
    this.startDateBorderRadios,
    this.endDateBorderRadios,
    this.containerWidth,
    this.containerHeight,
    this.endDateHeight,
    this.endDateWidth,
    this.startDateHeight,
    this.startDateWidth,
    this.clearButtonHeight,
    this.clearButtonWidth,
    this.datePickerPadding,
    this.labelPadding,
    this.format,
    required this.startDateOnChanged,
    required this.endDateOnChanged,
    this.startDate,
    this.endDate,
  });

  @override
  State<RangedDatePicker> createState() => _RangedDatePickerState();
}

class _RangedDatePickerState extends State<RangedDatePicker> {
  DateTime? _startDate;
  DateTime? _endDate;
  @override
  void initState() {
    _startDate = widget.startDate;
    _endDate = widget.endDate;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            // border: Border.fromBorderSide(Theme.of(context)
            //     .secondaryInputBorderTheme
            //     .focusedBorder!
            //     .borderSide),
            borderRadius: BorderRadius.all(Radius.circular(9.r))),
        child: SizedBox(
            width: widget.containerWidth,
            child: widget.labelPosition == Position.beside
                ? Row(
                    children: [
                      widget.label != null
                          ? Padding(
                              padding: widget.labelPadding ??
                                  EdgeInsets.symmetric(horizontal: 12.w),
                              child: Text(
                                widget.label ?? '',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            )
                          : const SizedBox(),
                      Padding(
                        padding: widget.datePickerPadding ??
                            const EdgeInsets.symmetric(),
                        child: SizedBox(
                          width: widget.containerWidth,
                          height: widget.containerHeight,
                          child: RangedDatePickerWidget(
                            startDateOnChanged: ({date, dateAsString}) =>
                                widget.startDateOnChanged(
                                    date: date, dateAsString: dateAsString),
                            endDateOnChanged: ({date, dateAsString}) =>
                                widget.endDateOnChanged(
                                    date: date, dateAsString: dateAsString),
                            startDateWidth: widget.startDateWidth,
                            startDateHeight: widget.startDateHeight,
                            endDateWidth: widget.endDateWidth,
                            endDateHeight: widget.endDateHeight,
                            startDateBorderRadios: widget.startDateBorderRadios,
                            endDateBorderRadios: widget.endDateBorderRadios,
                            clearButtonWidth: widget.clearButtonWidth,
                            clearButtonHeight: widget.clearButtonHeight,
                            containerWidth: widget.containerWidth,
                            format: widget.format,
                            startDate: _startDate,
                            endDate: _endDate,
                          ),
                        ),
                      )
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      widget.label != null
                          ? Padding(
                              padding: widget.labelPadding ??
                                  EdgeInsets.symmetric(vertical: 8.h),
                              child: Text(
                                widget.label ?? '',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            )
                          : const SizedBox(),
                      Padding(
                          padding: widget.datePickerPadding ??
                              const EdgeInsets.symmetric(),
                          child: SizedBox(
                            width: widget.containerWidth,
                            height: widget.containerHeight,
                            child: RangedDatePickerWidget(
                              startDateOnChanged: ({date, dateAsString}) {
                                setState(() {
                                  _startDate = date;
                                });
                                widget.startDateOnChanged(
                                    date: date, dateAsString: dateAsString);
                              },
                              endDateOnChanged: ({date, dateAsString}) {
                                setState(() {
                                  _endDate = date;
                                });
                                widget.endDateOnChanged(
                                    date: date, dateAsString: dateAsString);
                              },
                              startDateWidth: widget.startDateWidth,
                              startDateHeight: widget.startDateHeight,
                              endDateWidth: widget.endDateWidth,
                              endDateHeight: widget.endDateHeight,
                              startDateBorderRadios:
                                  widget.startDateBorderRadios,
                              endDateBorderRadios: widget.endDateBorderRadios,
                              clearButtonWidth: widget.clearButtonWidth,
                              clearButtonHeight: widget.clearButtonHeight,
                              containerWidth: widget.containerWidth,
                              format: widget.format,
                              startDate: _startDate,
                              endDate: _endDate,
                            ),
                          )),
                    ],
                  )),
      ),
    );
  }
}

class RangedDatePickerWidget extends StatefulWidget {
  final Function({DateTime? date, String? dateAsString}) startDateOnChanged;
  final Function({DateTime? date, String? dateAsString}) endDateOnChanged;
  final DateFormat? format;
  final BorderRadiusGeometry? startDateBorderRadios;
  final BorderRadiusGeometry? endDateBorderRadios;
  final double? containerWidth;
  final double? containerHeight;
  final double? startDateWidth;
  final double? startDateHeight;
  final double? endDateWidth;
  final double? endDateHeight;
  final double? clearButtonWidth;
  final double? clearButtonHeight;
  final DateTime? startDate;
  final DateTime? endDate;
  const RangedDatePickerWidget(
      {super.key,
      required this.startDateOnChanged,
      required this.endDateOnChanged,
      this.format,
      this.startDateBorderRadios,
      this.endDateBorderRadios,
      this.startDateWidth,
      this.startDateHeight,
      this.endDateWidth,
      this.endDateHeight,
      this.clearButtonWidth,
      this.clearButtonHeight,
      this.containerWidth,
      this.containerHeight,
      this.startDate,
      this.endDate});

  @override
  State<RangedDatePickerWidget> createState() => _RangedDatePickerWidgetState();
}

class _RangedDatePickerWidgetState extends State<RangedDatePickerWidget> {
  DateTime? _startDate;
  DateTime? _endDate;
  @override
  void initState() {
    _startDate = widget.startDate;
    _endDate = widget.endDate;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.containerWidth,
      child: Row(
        key: ValueKey([_startDate, _endDate]),
        children: [
          //start date picker
          Tooltip(
            message: LocaleKeys.startDate.tr(),
            child: SizedBox(
              width: widget.startDateWidth,
              child: DatePicker(
                key: ValueKey(_startDate),
                value: _startDate,
                onChanged: ({date, dateAsString}) {
                  _startDate = date;

                  widget.startDateOnChanged(
                      date: _startDate, dateAsString: dateAsString);
                },
                format: widget.format,
                width: widget.startDateWidth ?? 150.w,
                height: widget.startDateHeight ?? 39.h,
                borderRadius: widget.startDateBorderRadios ??
                    BorderRadiusDirectional.only(
                        topStart: Radius.circular(9.r),
                        bottomStart: Radius.circular(9.r)),
              ),
            ),
          ),
          //clear button
          SizedBox(
            width: widget.clearButtonWidth ?? 40.w,
            height: widget.clearButtonHeight ?? 39.h,
            child: ElevatedButton(
              onPressed: () {
                _startDate = null;
                _endDate = null;
                widget.startDateOnChanged(
                    date: _startDate, dateAsString: _startDate.toString());
                widget.endDateOnChanged(
                    date: _endDate, dateAsString: _endDate.toString());
                setState(() {});
              },
              style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                    padding: const WidgetStatePropertyAll(EdgeInsets.zero),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0.r)),
                      ),
                    ),
                    shadowColor: WidgetStateProperty.resolveWith(
                        (Set<WidgetState> states) {
                      if (states.contains(WidgetState.focused)) {
                        return Theme.of(context).shadowColor;
                      } else if (states.contains(WidgetState.hovered)) {
                        return Theme.of(context).shadowColor;
                      } else if (states.contains(WidgetState.pressed)) {
                        return Theme.of(context).shadowColor;
                      }
                      return Colors.transparent;
                    }),
                  ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Icon(
                  CupertinoIcons.calendar_badge_minus,
                  size: 25.sp,
                ),
              ),
            ),
          ),
          //end date picker
          Tooltip(
            message: LocaleKeys.endDate.tr(),
            child: SizedBox(
              width: widget.endDateWidth,
              child: DatePicker(
                key: ValueKey(_endDate),
                value: _endDate,
                onChanged: ({date, dateAsString}) {
                  _endDate = date;
                  widget.endDateOnChanged(
                      date: _endDate, dateAsString: dateAsString);
                },
                format: widget.format,
                width: widget.endDateWidth ?? 150.w,
                height: widget.endDateHeight ?? 39.h,
                borderRadius: widget.endDateBorderRadios ??
                    BorderRadiusDirectional.only(
                        topEnd: Radius.circular(9.r),
                        bottomEnd: Radius.circular(9.r)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
