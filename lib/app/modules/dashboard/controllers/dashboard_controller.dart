import 'package:app/app/modules/home/views/home_view.dart';
import 'package:app/app/modules/my_courses/views/my_courses_view.dart';
import 'package:app/app/modules/setting/views/setting_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  RxInt selectedIndex = 0.obs;

  List<Widget> screenList = [
    const HomeView(),
    const MyCoursesView(),
    const SettingView(),
  ];
}
