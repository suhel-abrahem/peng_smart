import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback? onPressed;
  const AppBarButton(
      {super.key, required this.title, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      width: 100.w,
      child: ElevatedButton(
        style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
            backgroundColor:
                WidgetStatePropertyAll(Theme.of(context).colorScheme.primary)),
        onPressed: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 80.h,
              child: Text(
                title,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: FittedBox(
                child: Icon(
                  icon,
                  color: Theme.of(context).textTheme.labelLarge?.color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
