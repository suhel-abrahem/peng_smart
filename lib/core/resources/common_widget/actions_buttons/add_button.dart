import "package:flutter/material.dart";

class AddButtons extends StatelessWidget {
  final VoidCallback? onPressed;
  final VoidCallback? onLongPressed;
  const AddButtons({super.key, required this.onPressed, this.onLongPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        onLongPress: onLongPressed,
        style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
              shape: const WidgetStatePropertyAll(CircleBorder()),
              // padding: WidgetStatePropertyAll(
              //     EdgeInsets.symmetric(
              //         horizontal: 18.w, vertical: 18.h)),
            ),
        child: const Icon(
          Icons.add_outlined,
          // size: 26.r,
        ));
  }
}
