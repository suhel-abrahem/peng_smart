import 'package:flutter/material.dart';

class SelectAllButton extends StatefulWidget {
  final VoidCallback? onPressed;
  const SelectAllButton({super.key, required this.onPressed});

  @override
  State<SelectAllButton> createState() => _SelectAllButtonState();
}

class _SelectAllButtonState extends State<SelectAllButton> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          widget.onPressed;
          setState(() {
            isSelected = !isSelected;
          });
        },
        style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
              shape: const WidgetStatePropertyAll(CircleBorder()),
              // padding: WidgetStatePropertyAll(
              //     EdgeInsets.symmetric(
              //         horizontal: 18.w, vertical: 18.h)),
            ),
        child: AnimatedSwitcher(
          duration: Duration(milliseconds: 300),
          child: Icon(
            key: ValueKey(isSelected),
            isSelected ? Icons.unpublished_outlined : Icons.select_all_rounded,
            // size: 26.r,
          ),
        ));
  }
}
