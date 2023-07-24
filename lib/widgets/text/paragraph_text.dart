import 'package:custom_widgets_app/base/extension/context_extension.dart';
import 'package:flutter/material.dart';

final class ParagraphText extends StatelessWidget {
  final String title;
  final String paragraph;
  final Color? textColor;
  const ParagraphText({
    super.key,
    this.textColor,
    required this.title,
    required this.paragraph,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.textTheme.titleMedium?.copyWith(
            color: textColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
          child: Text(
            paragraph,
            style: context.textTheme.bodySmall?.copyWith(
              color: textColor,
            ),
          ),
        ),
      ],
    );
  }
}
