// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class IconTextField extends StatelessWidget {
  IconTextField({
    super.key,
    required this.label,
    this.controller,
    this.validator,
    this.icon,
    required this.iconSize,
    required this.componentColor,
  });
  String? label;
  TextEditingController? controller;
  FormFieldValidator? validator;
  IconData? icon;
  double iconSize;
  Color componentColor;
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
