import 'package:app/app/app_config/app_colors.dart';
import 'package:app/gen/assets.gen.dart';
import 'package:app/utils/resuable_widgets.dart';
import 'package:app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Assets.images.bgImg.image(),
        Scaffold(
          body: Center(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              children: [
                Assets.iconsc.logo.svg(height: 120.h, width: 120.w),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 21.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Unlock your full potential with our study app!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      boxHeight(20),
                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey.shade600,
                            ),
                          ),
                          boxWidth(10),
                          Text(
                            "Log in or sign up",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                          ),
                          boxWidth(10),
                          const Expanded(
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      boxHeight(20),
                      Container(
                        decoration: Utils.appDecorations.boxDecoration1(),
                        child: TextFormField(
                          controller: controller.phoneCon,
                          maxLength: 10,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: Utils.appDecorations
                              .inputDecorationWithPrefix(
                                "Enter your phone number",
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 13),
                                  child: Text(
                                    "+91",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              )
                              .copyWith(counterText: ""),
                        ),
                      ),
                      boxHeight(20),
                      Row(
                        children: [
                          Expanded(
                            child: Obx(
                              () => Utils.appButton.primaryGradientButton(
                                loading: controller.buttonLoading.value,
                                child: const Center(
                                  child: Text(
                                    "LOG IN",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                onPress: () {
                                  controller.onLogin();
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      boxHeight(10),
                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey.shade700,
                            ),
                          ),
                          boxWidth(10),
                          Text(
                            "OR",
                            style: TextStyle(color: Colors.grey.shade700),
                          ),
                          boxWidth(10),
                          Expanded(
                            child: Divider(
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ],
                      ),
                      boxHeight(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          roundedContainer(
                            Assets.iconsc.google.svg(
                              height: 35,
                              width: 35,
                            ),
                            () {},
                          ),
                          roundedContainer(
                            Assets.iconsc.facebook.svg(
                              height: 35,
                              width: 35,
                            ),
                            () {},
                          ),
                          roundedContainer(
                            const Icon(
                              Icons.email,
                              size: 35,
                            ),
                            () {},
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget roundedContainer(Widget image, Function() onPress) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.all(10.r),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 5,
            ),
          ],
        ),
        child: image,
      ),
    );
  }
}
