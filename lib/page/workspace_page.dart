import 'package:custom_widgets_app/base/constants/app_colors.dart';
import 'package:custom_widgets_app/base/extension/context_extension.dart';
import 'package:custom_widgets_app/widgets/divider/text_divider.dart';
import 'package:custom_widgets_app/widgets/textField/nonborder-textfield.dart';

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
              IconTextField(label: "Username", iconSize: 30, componentColor: Colors.black),
              IconTextField(label: "Search", iconSize: 40, componentColor: Colors.red),
              IconTextField(label: "Number", iconSize: 20, componentColor: Colors.green),
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
