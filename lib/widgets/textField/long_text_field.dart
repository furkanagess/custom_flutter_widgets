import 'package:custom_widgets_app/base/extension/context_extension.dart';
import 'package:flutter/material.dart';

@immutable
final class FeedbackLongTextField extends StatelessWidget {
  final TextEditingController? controller;
  final Color? borderColor;
  final String hint;
  final int length;

  const FeedbackLongTextField({
    super.key,
    this.controller,
    this.borderColor,
    required this.length,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      controller: controller,
      keyboardType: TextInputType.multiline,
      maxLines: 6,
      maxLength: length,
      decoration: InputDecoration(
        counterStyle: const TextStyle(
          color: Colors.white,
        ),
        iconColor: Colors.red,
        hintStyle: context.textTheme.bodyMedium?.copyWith(
          color: Colors.grey,
        ),
        hintText: hint,
        hoverColor: Colors.white,
        focusColor: Colors.white,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Colors.white,
          ),
        ),
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Colors.white,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Colors.white,
          ),
        ),
        border: const OutlineInputBorder(
            borderSide: BorderSide(
          width: 2,
          color: Colors.white,
        )),
      ),
    );
  }
}
