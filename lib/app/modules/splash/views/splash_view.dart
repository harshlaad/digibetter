import 'package:app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Text(controller.name.value),
          Center(
            child: Assets.iconsc.logo.svg(
              height: 200.h,
              width: 200.w,
            ),
          ),
        ],
      ),
    );
  }
}
