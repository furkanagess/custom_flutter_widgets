// ignore_for_file: must_be_immutable

import 'package:custom_widgets_app/base/extension/context_extension.dart';
import 'package:flutter/material.dart';

class DividerWithText extends StatelessWidget {
  DividerWithText({
    required this.text,
    required this.dividerThickness,
    required this.color,
    super.key,
  });
  String text;
  Color color;
  double dividerThickness;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: color,
            thickness: dividerThickness,
          ),
        ),
        Text(
          text,
          style: context.textTheme.bodyMedium,
        ),
        Expanded(
          child: Divider(
            color: color,
            thickness: dividerThickness,
          ),
        ),
      ],
    );
  }
}
