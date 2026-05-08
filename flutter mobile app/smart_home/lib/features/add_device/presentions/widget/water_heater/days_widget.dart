import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import 'package:smart_home/config/theme/app_theme.dart';
import 'package:smart_home/core/constants/font_constants.dart';
import 'package:smart_home/features/add_device/domain/entities/day_entity.dart';

class DaysWidget extends StatefulWidget {
  final List? days;
  final bool readOnly;
  final ValueChanged<List<String>> onChanged;
  const DaysWidget({
    super.key,
    required this.days,
    required this.readOnly,
    required this.onChanged,
  });

  @override
  State<DaysWidget> createState() => _DaysWidgetState();
}

class _DaysWidgetState extends State<DaysWidget> {
  List<DayEntity> dayEntities = [];
  @override
  void initState() {
    if (widget.readOnly) {
      dayEntities =
          widget.days
              ?.map((d) => DayEntity(name: d.toString(), selected: true))
              .toList() ??
          [];
      return;
    }
    dayEntities = [
      DayEntity(name: 'mon', selected: false),
      DayEntity(name: 'tue', selected: false),
      DayEntity(name: 'wed', selected: false),
      DayEntity(name: 'thu', selected: false),
      DayEntity(name: 'fri', selected: false),
      DayEntity(name: 'sat', selected: false),
      DayEntity(name: 'sun', selected: false),
    ];
    for (var day in (widget.days ?? [])) {
      final index = dayEntities.indexWhere((d) => d.name == day);
      if (index != -1) {
        dayEntities[index] = dayEntities[index].copyWith(selected: true);
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsetsDirectional.only(end: 4.w),
        child: DayButton(
          readOnly: widget.readOnly,
          day: dayEntities[index],
          onTap: (day) {
            if (!widget.readOnly) {
              setState(() {
                dayEntities[index] = day;
              });
              final selectedDays = dayEntities
                  .where((d) => d.selected)
                  .map((d) => d.name)
                  .toList();
              widget.onChanged(selectedDays);
            }
          },
        ),
      ),
      itemCount: dayEntities.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      physics: AlwaysScrollableScrollPhysics(),
    );
  }
}

class DayButton extends StatelessWidget {
  final DayEntity day;
  final bool readOnly;
  final ValueChanged<DayEntity> onTap;
  const DayButton({
    super.key,
    required this.day,
    required this.onTap,
    required this.readOnly,
  });

  @override
  Widget build(BuildContext context) {
    DayEntity day = this.day;
    return InkWell(
      onTap: () {
        day = day.copyWith(selected: !day.selected);
        onTap(day);
      },
      child: readOnly
          ? Container(
              height: 30.h,
              width: 50.w,

              // padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
              child: Center(
                child: Text(
                  day.name,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    fontFamily: FontConstants.fontFamily(context.locale),
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w600,
                    color: day.selected ? Colors.white : Colors.black,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ).asGlass(
              clipBorderRadius: BorderRadiusGeometry.circular(8.r),
              frosted: true,
              blurX: 10,
              blurY: 10,
              border: Theme.of(context).defaultBorderSide,
            )
          : Container(
              height: 30.h,
              width: 50.w,
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: day.selected ? Colors.blue : Colors.grey[300],

                shape: readOnly ? BoxShape.rectangle : BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  day.name,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    fontFamily: FontConstants.fontFamily(context.locale),
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w600,
                    color: day.selected ? Colors.white : Colors.black,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
    );
  }
}
