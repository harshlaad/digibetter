import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/my_courses_controller.dart';

class MyCoursesView extends GetView<MyCoursesController> {
  const MyCoursesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("My Courses"),
      ),
    );
  }
}
