// ignore_for_file: must_be_immutable

import 'package:custom_widgets_app/base/extension/context_extension.dart';
import 'package:flutter/material.dart';

class ClickableTextRow extends StatelessWidget {
  ClickableTextRow({
    required this.text,
    required this.onTap,
    required this.clickableText,
    required this.textClr,
    super.key,
  });
  String text;
  String clickableText;
  Color textClr;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text),
        SizedBox(width: context.dynamicHeight(0.01)),
        InkWell(
          onTap: onTap,
          child: Text(
            clickableText,
            style: context.textTheme.bodyMedium?.copyWith(
              color: textClr,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
