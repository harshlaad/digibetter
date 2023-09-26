import 'package:app/utils/resuable_widgets.dart';
import 'package:app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/dashboard_drawer_controller.dart';

class DashboardDrawerView extends GetView<DashboardDrawerController> {
  const DashboardDrawerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          boxHeight(10),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: Utils.appDecorations.boxDecoration1(),
            child: const Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 40,
                ),
                Column(
                  children: [
                    Text("Harsh Laad"),
                    Text("Harshlaad89594@gmail.com"),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
