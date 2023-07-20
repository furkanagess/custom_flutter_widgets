import 'package:custom_widgets_app/base/constants/app_colors.dart';
import 'package:custom_widgets_app/base/extension/context_extension.dart';
import 'package:custom_widgets_app/widgets/textField/nonborder_textfield.dart';

import 'package:flutter/material.dart';

@immutable
final class WorkspacePage extends StatelessWidget {
  const WorkspacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: Padding(
        padding: context.paddingNormal,
        child: const Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NonborderTextField(label: "Username", iconSize: 30, componentColor: Colors.black),
              NonborderTextField(label: "Search", iconSize: 40, componentColor: Colors.red),
              NonborderTextField(label: "Number", iconSize: 20, componentColor: Colors.green),
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
