import 'package:flutter/material.dart';
import 'package:peng_smart/core/resources/common_page/main_costume_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddRoomPage extends StatefulWidget {
  const AddRoomPage({super.key});

  @override
  State<AddRoomPage> createState() => _AddRoomPageState();
}

class _AddRoomPageState extends State<AddRoomPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 600.h,
      decoration:
          BoxDecoration(color: Theme.of(context).colorScheme.primaryContainer),
      child: ListView(
        children: [
          const SizedBox(height: 20),
          Text(
            "Add a new room to your home.",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 20),
          // Add your form fields here
          ElevatedButton(
            onPressed: () {
              // Handle the add room action
            },
            child: const Text("Add Room"),
          ),
        ],
      ),
    );
  }
}
