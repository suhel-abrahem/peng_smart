import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../enums/psition_enum.dart';
import '../../../util/helper.dart';

class DatePicker extends StatefulWidget {
  final String? label;
  final Color? backgroundColor;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? labelPadding;
  final EdgeInsetsGeometry? buttonPadding;
  final bool readOnly;

  final Position labelPosition;
  final Function({DateTime? date, String? dateAsString}) onChanged;
  final BorderRadiusGeometry? borderRadius;
  final DateTime? value;
  final DateFormat? format;
  const DatePicker(
      {super.key,
      this.label,
      this.backgroundColor,
      this.width,
      this.height,
      this.readOnly = false,
      this.labelPosition = Position.beside,
      this.labelPadding,
      this.borderRadius,
      this.buttonPadding,
      required this.onChanged,
      this.value,
      this.format});

  @override
  State<DatePicker> createState() => DatePickerState();
}

class DatePickerState extends State<DatePicker> {
  DateTime? _chosenDate;
  String? _stringChosenDate;
  @override
  void initState() {
    _chosenDate = widget.value;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant DatePicker oldWidget) {
    _chosenDate = widget.value;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    _stringChosenDate = Helper.customDateFormatAsString(
        date: _chosenDate, format: widget.format);
    return widget.labelPosition == Position.beside
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
                padding: widget.buttonPadding ?? const EdgeInsets.symmetric(),
                child: _DatePickerButton(),
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
                padding: widget.buttonPadding ?? const EdgeInsets.symmetric(),
                child: _DatePickerButton(),
              ),
            ],
          );
  }

  Widget _DatePickerButton() {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: ElevatedButton(
        onLongPress: widget.readOnly
            ? null
            : () {
                setState(() {
                  _chosenDate = null;
                  _stringChosenDate = Helper.customDateFormatAsString(
                      date: _chosenDate, format: widget.format);
                  widget.onChanged(
                      date: _chosenDate, dateAsString: _stringChosenDate);
                });
              },
        onPressed: widget.readOnly
            ? null
            : () async {
                final DateTime? pickedDate = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2024),
                  lastDate: DateTime(3000),
                  currentDate: DateTime.now(),
                );
                if (pickedDate != null && pickedDate != _chosenDate) {
                  setState(() {
                    _chosenDate = pickedDate;
                    _stringChosenDate = Helper.customDateFormatAsString(
                        date: _chosenDate, format: widget.format);
                    widget.onChanged(
                        date: _chosenDate, dateAsString: _stringChosenDate);
                  });
                }
              },
        style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
              shadowColor:
                  WidgetStateProperty.resolveWith((Set<WidgetState> states) {
                if (states.contains(WidgetState.focused)) {
                  return Theme.of(context).shadowColor;
                } else if (states.contains(WidgetState.hovered)) {
                  return Theme.of(context).shadowColor;
                } else if (states.contains(WidgetState.pressed)) {
                  return Theme.of(context).shadowColor;
                }
                return Colors.transparent;
              }),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: widget.borderRadius ??
                      BorderRadius.all(Radius.circular(9.r)),
                ),
              ),
            ),
        child: AnimatedSwitcher(
          duration: Duration(milliseconds: 600),
          child: FittedBox(
            key: ValueKey(_stringChosenDate),
            fit: BoxFit.scaleDown,
            child: Text(
              Helper.dateNullSafety(
                      date: _stringChosenDate,
                      message: widget.format?.pattern) ??
                  '',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
        ),
      ),
    );
  }
}
// nothing to show
