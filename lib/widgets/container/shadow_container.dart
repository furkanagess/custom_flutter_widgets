// ignore_for_file: must_be_immutable

import 'package:custom_widgets_app/base/extension/context_extension.dart';
import 'package:flutter/material.dart';

class ShadowContainer extends StatelessWidget {
  Function() onTap;
  Color color;
  Color shadowColor;
  String title;
  double dynamicHeight;
  double dynamicWidth;
  Color? textColor;

  ShadowContainer({
    super.key,
    this.textColor,
    required this.dynamicHeight,
    required this.dynamicWidth,
    required this.onTap,
    required this.color,
    required this.shadowColor,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: context.dynamicHeight(dynamicHeight),
        width: context.dynamicWidth(dynamicWidth),
        decoration: BoxDecoration(
          border: Border.all(width: 0.5),
          boxShadow: [
            BoxShadow(
              color: shadowColor,
              offset: const Offset(4, 4),
              spreadRadius: 1,
            ),
          ],
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
        child: Center(
          child: Text(
            title,
            style: context.textTheme.bodyMedium?.copyWith(
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
