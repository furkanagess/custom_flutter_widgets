import 'package:flutter/material.dart';

@immutable
final class NonborderTextField extends StatelessWidget {
  const NonborderTextField({
    super.key,
    required this.label,
    this.controller,
    this.validator,
    this.icon,
    required this.iconSize,
    required this.componentColor,
  });
  final String? label;
  final TextEditingController? controller;
  final FormFieldValidator? validator;
  final IconData? icon;
  final double iconSize;
  final Color componentColor;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      cursorColor: componentColor,
      decoration: InputDecoration(
        focusColor: componentColor,
        labelText: label,
        icon: Icon(
          icon,
          size: iconSize,
          color: componentColor,
        ),
      ),
    );
  }
}
