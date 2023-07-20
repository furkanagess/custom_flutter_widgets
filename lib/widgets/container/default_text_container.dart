import 'package:custom_widgets_app/base/extension/context_extension.dart';
import 'package:flutter/material.dart';

@immutable
final class HeaderContainer extends StatelessWidget {
  final VoidCallback? onTap;
  final Color bgColor;
  final Color textColor;
  final String text;
  final double width;
  final double height;
  const HeaderContainer({
    super.key,
    this.onTap,
    required this.height,
    required this.width,
    required this.bgColor,
    required this.textColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: context.dynamicWidth(width), // recommended 0.42
        height: context.dynamicHeight(height), // recommended 0.25
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            textAlign: TextAlign.center,
            text,
            style: context.textTheme.titleLarge?.copyWith(
              color: textColor,
            ),
          ),
        )),
      ),
    );
  }
}
