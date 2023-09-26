import 'package:app/app/routes/app_pages.dart';
import 'package:app/utils/resuable_widgets.dart';
import 'package:app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/setting_controller.dart';

class SettingView extends GetView<SettingController> {
  const SettingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: Utils.appDecorations.boxDecoration1(),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.shade300,
                  radius: 35,
                ),
                boxWidth(10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Harsh Laad",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text('Harshlaad89594@gmail.com')
                  ],
                ),
              ],
            ),
          ),
          boxHeight(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                settingCard("Edit Profile"),
                settingCard("Change Password"),
                settingCard("Notification Settings"),
                settingCard("Privacy Policy & Terms of Use"),
                settingCard("Contact Us"),
                settingCard("Log Out"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget settingCard(String name) {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(Routes.LOGIN);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        decoration: Utils.appDecorations.boxDecoration1(),
        child: ListTile(
          title: Text(name),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
