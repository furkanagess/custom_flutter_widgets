// ignore_for_file: must_be_immutable

import 'package:custom_widgets_app/base/extension/context_extension.dart';
import 'package:flutter/material.dart';

class GradientElevatedButton extends StatelessWidget {
  String text;
  Function() onTap;
  List<Color> colors;
  Color? textColor;
  double dynamicWidth;
  double dynamicHeight;
  GradientElevatedButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.colors,
    required this.dynamicHeight,
    required this.dynamicWidth,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: context.dynamicWidth(dynamicWidth), // recommended 0.5
        height: context.dynamicHeight(dynamicHeight), // recommended 0.07
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: colors,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: context.textTheme.bodyLarge?.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
