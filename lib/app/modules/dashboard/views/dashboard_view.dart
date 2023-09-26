import 'package:app/app/modules/dashboard_drawer/views/dashboard_drawer_view.dart';
import 'package:app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Scaffold(
          key: controller.scaffoldKey,
          appBar: Utils.appBar.defaultAppBar(),
          drawer: const DashboardDrawerView(),
          body: controller.screenList[controller.selectedIndex.value],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.selectedIndex.value,
            onTap: (value) {
              controller.selectedIndex.value = value;
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.my_library_books_outlined),
                label: "My Courses",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Setting",
              )
            ],
          ),
        ),
      ),
    );
  }
}
