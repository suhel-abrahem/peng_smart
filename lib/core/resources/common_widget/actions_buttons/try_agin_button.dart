import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../generated/locale_keys.g.dart';

class TryAginButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const TryAginButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed, child: Text(LocaleKeys.tryAgin.tr()));
  }
}
