import 'package:custom_widgets_app/base/extension/context_extension.dart';
import 'package:flutter/material.dart';

@immutable
final class GradientTextsContainer extends StatelessWidget {
  final String header;
  final String bodyText1;
  final String bodyText2;
  final String subText1;
  final String subText2;
  final Color? headerColor;
  final List<Color> colors;
  final Function() onTap;
  final Color? textColor;
  const GradientTextsContainer({
    super.key,
    required this.header,
    required this.bodyText1,
    required this.bodyText2,
    required this.subText1,
    required this.subText2,
    required this.onTap,
    required this.colors,
    this.textColor,
    this.headerColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: colors,
          ),
        ),
        height: 198,
        width: 168,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: headerColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )),
                  width: 168,
                  height: 58,
                  child: Center(
                    child: Text(
                      header,
                      style: context.textTheme.titleMedium?.copyWith(
                        color: textColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: context.dynamicHeight(0.02),
            ),
            Column(
              children: [
                Text(
                  bodyText1,
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: textColor,
                  ),
                ),
                Text(
                  bodyText2,
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: textColor,
                  ),
                ),
                SizedBox(
                  height: context.dynamicHeight(0.02),
                ),
                Text(
                  subText1,
                  style: context.textTheme.titleLarge?.copyWith(
                    color: textColor,
                  ),
                ),
                SizedBox(
                  height: context.dynamicHeight(0.01),
                ),
                Text(
                  subText2,
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: textColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
