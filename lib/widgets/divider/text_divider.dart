import 'package:custom_widgets_app/base/extension/context_extension.dart';
import 'package:flutter/material.dart';

class DividerWithText extends StatelessWidget {
  const DividerWithText({
    required this.text,
    required this.dividerThickness,
    required this.color,
    super.key,
  });
  final String text;
  final Color color;
  final double dividerThickness;

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
