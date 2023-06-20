// ignore_for_file: must_be_immutable

import 'package:custom_widgets_app/base/extension/context_extension.dart';
import 'package:flutter/material.dart';

class ParagraphText extends StatelessWidget {
  String title;
  String paragraph;
  Color? textColor;
  ParagraphText({
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
