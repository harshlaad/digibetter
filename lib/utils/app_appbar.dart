import 'package:app/app/app_config/app_colors.dart';
import 'package:flutter/material.dart';

class AppAppBar {
  AppBar defaultAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.primaryColor,
      // leading: IconButton(
      //   icon: const Icon(Icons.menu),
      //   onPressed: () {
      //     DashboardController dashboardController = Get.find();
      //     dashboardController.scaffoldKey.currentState!.openDrawer();
      //   },
      // ),
      title: const Text("Digibetter"),
    );
  }
}
