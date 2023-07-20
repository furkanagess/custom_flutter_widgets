import 'package:custom_widgets_app/base/extension/context_extension.dart';
import 'package:flutter/material.dart';

@immutable
final class BorderIconContainer extends StatelessWidget {
  final Color? borderColor;
  final String text;
  final Color? textColor;
  final Color? bgColor;
  final Color? iconColor;
  final double dynamicHeight;
  final double dynamicWidth;
  final double? iconSize;
  final IconData icon;
  final VoidCallback onTap;

  const BorderIconContainer({
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
