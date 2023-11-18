import 'package:flutter/material.dart';
import 'package:joke/presentation/theme/app_theme.dart';

Widget elevatedButton(
    {required Widget child,
    Function()? onPressed,
    double borderRadius = 20,
    Color? backgroundColor}) {
  return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(backgroundColor ?? AppTheme.green2),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            side: BorderSide.none,
            // borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
      onPressed: onPressed,
      child: child);
}
