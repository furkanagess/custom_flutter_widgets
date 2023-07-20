import 'package:flutter/material.dart';

@immutable
class CustomNormalSearchBar extends StatelessWidget {
  final TextEditingController? controller;
  final Color focusColor;
  final Color defaultColor;
  final Color hintColor;
  final VoidCallback? iconTap;
  final VoidCallback? onSubmit;
  final String hintText;

  const CustomNormalSearchBar({
    super.key,
    required this.hintText,
    this.controller,
    required this.focusColor,
    required this.defaultColor,
    this.iconTap,
    this.onSubmit,
    required this.hintColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: defaultColor),
      cursorColor: focusColor,
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: defaultColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: defaultColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: focusColor,
          ),
        ),
        hintText: hintText,
        hintStyle: TextStyle(color: hintColor),
        prefixIcon: IconButton(
          icon: Icon(
            Icons.search,
            color: hintColor,
          ),
          onPressed: iconTap,
        ),
      ),
      onSubmitted: (_) => onSubmit,
      autocorrect: true,
    );
  }
}
