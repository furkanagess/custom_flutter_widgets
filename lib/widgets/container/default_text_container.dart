// ignore_for_file: must_be_immutable

import 'package:custom_widgets_app/base/extension/context_extension.dart';
import 'package:flutter/material.dart';

class HeaderContainer extends StatelessWidget {
  VoidCallback? onTap;
  Color bgColor;
  Color textColor;
  String text;
  double width;
  double height;
  HeaderContainer({
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
