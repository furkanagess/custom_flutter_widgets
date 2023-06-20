// ignore_for_file: must_be_immutable

import 'package:custom_widgets_app/base/extension/context_extension.dart';
import 'package:flutter/material.dart';

class BorderIconContainer extends StatelessWidget {
  Color? borderColor;
  String text;
  Color? textColor;
  Color? bgColor;
  Color? iconColor;
  double dynamicHeight;
  double dynamicWidth;
  double? iconSize;
  IconData icon;
  VoidCallback onTap;

  BorderIconContainer({
    super.key,
    this.iconColor,
    required this.onTap,
    required this.icon,
    this.textColor,
    this.iconSize,
    required this.dynamicHeight,
    required this.dynamicWidth,
    this.borderColor,
    required this.text,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: context.dynamicWidth(dynamicHeight),
        width: context.dynamicHeight(dynamicWidth),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2.0,
            color: borderColor!,
          ),
          borderRadius: BorderRadius.circular(10.0),
          color: bgColor,
        ),
        padding: context.paddingNormal,
        child: Column(
          children: [
            Icon(
              icon,
              size: iconSize,
              color: iconColor,
            ),
            SizedBox(height: context.dynamicHeight(0.02)),
            Text(
              text,
              style: context.textTheme.bodyMedium?.copyWith(color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
