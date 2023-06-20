import 'package:custom_widgets_app/base/constants/app_colors.dart';
import 'package:custom_widgets_app/base/extension/context_extension.dart';
import 'package:custom_widgets_app/widgets/container/icon_text_border.dart';
import 'package:flutter/material.dart';

class WorkspacePage extends StatelessWidget {
  const WorkspacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: context.paddingNormal,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BorderIconContainer(
                onTap: () {},
                iconColor: Colors.black,
                icon: Icons.camera,
                textColor: Colors.black,
                iconSize: 48.0,
                dynamicHeight: 0.2,
                dynamicWidth: 0.2,
                borderColor: Colors.black,
                text: "Camera",
                bgColor: Colors.grey,
              ),
              SizedBox(height: context.dynamicHeight(0.05)),
              BorderIconContainer(
                onTap: () {},
                iconColor: Colors.black,
                icon: Icons.access_alarms,
                textColor: Colors.black,
                iconSize: 48.0,
                dynamicHeight: 0.2,
                dynamicWidth: 0.3,
                borderColor: Colors.red,
                text: "Alarm",
                bgColor: Colors.green,
              ),
              SizedBox(height: context.dynamicHeight(0.05)),
              BorderIconContainer(
                onTap: () {},
                iconColor: Colors.red,
                icon: Icons.camera,
                textColor: Colors.black,
                iconSize: 48.0,
                dynamicHeight: 0.2,
                dynamicWidth: 0.2,
                borderColor: Colors.deepPurple,
                text: "Camera",
                bgColor: Colors.brown,
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
