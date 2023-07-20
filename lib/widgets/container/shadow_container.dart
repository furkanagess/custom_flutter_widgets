import 'package:custom_widgets_app/base/extension/context_extension.dart';
import 'package:flutter/material.dart';

final class ShadowContainer extends StatelessWidget {
  final Function() onTap;
  final Color color;
  final Color shadowColor;
  final String title;
  final double dynamicHeight;
  final double dynamicWidth;
  final Color? textColor;

  const ShadowContainer({
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
