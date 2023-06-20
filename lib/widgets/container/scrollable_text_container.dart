// ignore_for_file: must_be_immutable

import 'package:custom_widgets_app/base/extension/context_extension.dart';
import 'package:flutter/material.dart';

class ParapgraphContainer extends StatelessWidget {
  Color bgColor;
  Color textColor;
  String title;
  String description;
  double dynamicWidth;
  double dynamicHeight;
  ParapgraphContainer({
    super.key,
    required this.dynamicWidth,
    required this.dynamicHeight,
    required this.bgColor,
    required this.textColor,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.dynamicHeight(dynamicHeight),
      width: context.dynamicWidth(dynamicWidth),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: bgColor,
      ),
      child: Padding(
        padding: context.paddingNormal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: context.dynamicHeight(0.01)),
            Text(
              title,
              style: context.textTheme.headlineSmall?.copyWith(
                color: textColor,
              ),
            ),
            SizedBox(height: context.dynamicHeight(0.01)),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
                      child: Column(
                        children: [
                          Text(
                            description,
                            style: context.textTheme.titleSmall?.copyWith(
                              color: textColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
