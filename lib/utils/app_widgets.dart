import 'package:app/gen/assets.gen.dart';
import 'package:app/utils/utils.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AppWidgets {
  void uploadImage(String title, Function(XFile) onImageTaken) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
      context: Get.context!,
      builder: (context) => Container(
        padding: EdgeInsets.symmetric(horizontal: 21.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.close),
                )
              ],
            ),
            ListTile(
              leading: const Icon(Icons.camera_alt_outlined),
              title: const Text("Camera"),
              onTap: () async {
                XFile? xFile = await Utils.appImagePicker.pickImageCamera();
                Get.back();
                if (xFile != null) {
                  onImageTaken(xFile);
                }
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_outlined),
              title: const Text("Gallery"),
              onTap: () async {
                XFile? xFile = await Utils.appImagePicker.pickImageGallery();
                Get.back();
                if (xFile != null) {
                  onImageTaken(xFile);
                }
              },
            )
          ],
        ),
      ),
    );
  }

  Future<dio.MultipartFile> imageToMultipart(XFile image) async {
    return await dio.MultipartFile.fromFile(image.path, filename: image.name);
  }

  Widget loadingWidget() {
    return Center(child: Assets.lottie.loading.lottie(height: 100.h));
  }
}
