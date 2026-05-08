import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_home/core/constants/font_constants.dart';
import 'package:smart_home/features/add_device/presentions/widget/water_heater/days_widget.dart';

import '../../../domain/entities/water_heater/heater_session_entity.dart';

class AddSessionDialog extends StatefulWidget {
  const AddSessionDialog({super.key});

  @override
  State<AddSessionDialog> createState() => _AddSessionDialogState();
}

class _AddSessionDialogState extends State<AddSessionDialog> {
  TimeOfDay? start;
  TimeOfDay? end;

  final relay1Controller = TextEditingController();
  final relay2Controller = TextEditingController();
  List<String> selectedDays = [];
  String format(TimeOfDay t) {
    return "${t.hour.toString().padLeft(2, '0')}:${t.minute.toString().padLeft(2, '0')}";
  }

  void submit() {
    if (start == null || end == null) return;

    final session = HeaterSessionEntity(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      startTime: format(start!),
      endTime: format(end!),
      relay1Minutes: int.tryParse(relay1Controller.text) ?? 0,
      relay2Minutes: int.tryParse(relay2Controller.text) ?? 0,
      days: selectedDays,
    );

    Navigator.pop(context, session);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        "Add Session",
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
          fontFamily: FontConstants.fontFamily(context.locale),
        ),
      ),
      content: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                final t = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                if (t != null) setState(() => start = t);
              },
              child: Text(start == null ? "Start Time" : format(start!)),
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: ElevatedButton(
                onPressed: () async {
                  final t = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  if (t != null) setState(() => end = t);
                },
                child: Text(end == null ? "End Time" : format(end!)),
              ),
            ),

            TextField(
              controller: relay1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Relay1 minutes"),
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: TextField(
                controller: relay2Controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: "Relay2 minutes"),
              ),
            ),
            SizedBox(
              width: 300.w,
              height: 50.h,
              child: DaysWidget(
                days: [],
                readOnly: false,
                onChanged: (selectedDays) {
                  this.selectedDays = selectedDays;
                },
              ),
            ),
          ],
        ),
      ),
      actions: [TextButton(onPressed: submit, child: const Text("Add"))],
    );
  }
}
