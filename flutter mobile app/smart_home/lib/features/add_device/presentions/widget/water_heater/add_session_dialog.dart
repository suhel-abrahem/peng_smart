import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/entities/water_heater/heater_session_entity.dart';

class AddSessionDialog extends StatefulWidget {
  const AddSessionDialog();

  @override
  State<AddSessionDialog> createState() => _AddSessionDialogState();
}

class _AddSessionDialogState extends State<AddSessionDialog> {
  TimeOfDay? start;
  TimeOfDay? end;

  final relay1Controller = TextEditingController();
  final relay2Controller = TextEditingController();

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
    );

    Navigator.pop(context, session);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Add Session"),
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
          ],
        ),
      ),
      actions: [TextButton(onPressed: submit, child: const Text("Add"))],
    );
  }
}
