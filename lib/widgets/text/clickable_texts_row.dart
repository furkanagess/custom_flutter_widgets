import 'package:custom_widgets_app/base/extension/context_extension.dart';
import 'package:flutter/material.dart';

@immutable
final class ClickableTextRow extends StatelessWidget {
  const ClickableTextRow({
    required this.text,
    required this.onTap,
    required this.clickableText,
    required this.textClr,
    super.key,
  });
  final String text;
  final String clickableText;
  final Color textClr;
  final VoidCallback onTap;

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
