import 'package:custom_widgets_app/base/constants/app_colors.dart';
import 'package:custom_widgets_app/base/extension/context_extension.dart';
import 'package:custom_widgets_app/widgets/divider/text_divider.dart';

import 'package:flutter/material.dart';

class WorkspacePage extends StatelessWidget {
  const WorkspacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: Padding(
        padding: context.paddingNormal,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DividerWithText(
                text: "OR",
                dividerThickness: 1,
                color: Colors.red,
              ),
              DividerWithText(
                text: "Divider",
                dividerThickness: 5,
                color: Colors.black,
              ),
              DividerWithText(
                text: "Social",
                dividerThickness: 3,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.background,
    );
  }
}
