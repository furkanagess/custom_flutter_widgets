// ignore_for_file: must_be_immutable

import 'package:custom_widgets_app/base/extension/context_extension.dart';
import 'package:flutter/material.dart';

class CustomChangedCircle extends StatelessWidget {
  final bool isSelected;
  Color color;
  CustomChangedCircle({
    super.key,
    required this.isSelected,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingLow,
      child: CircleAvatar(
        backgroundColor: color.withOpacity(isSelected ? 1 : 0.2),
        radius: isSelected ? 8 : 4,
      ),
    );
  }
}
