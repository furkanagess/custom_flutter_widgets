import 'package:flutter/material.dart';

@immutable
final class StadiumSearchBar extends StatelessWidget {
  final TextEditingController? controller;
  final Color defaultColor;
  final Color hintColor;
  final VoidCallback iconTap;
  final VoidCallback onSubmit;
  final String hintText;
  const StadiumSearchBar({
    super.key,
    required this.hintText,
    this.controller,
    required this.defaultColor,
    required this.iconTap,
    required this.onSubmit,
    required this.hintColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: hintColor,
      ),
      cursorColor: hintColor,
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: defaultColor,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: hintColor,
        ),
        prefixIcon: IconButton(
          icon: Icon(
            Icons.search,
            color: hintColor,
            size: 30,
          ),
          onPressed: iconTap,
        ),
      ),
      onSubmitted: (_) => onSubmit,
      autocorrect: true,
    );
  }
}
