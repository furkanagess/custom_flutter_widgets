import 'package:custom_widgets_app/base/constants/app_colors.dart';
import 'package:custom_widgets_app/base/extension/context_extension.dart';

import 'package:flutter/material.dart';

class WorkspacePage extends StatelessWidget {
  const WorkspacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      backgroundColor: AppColors.background,
      body: Padding(
        padding: context.paddingNormal,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
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
