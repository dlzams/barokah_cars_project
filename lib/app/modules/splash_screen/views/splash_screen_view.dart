import 'dart:async';

import 'package:barokah_cars_project/app/modules/splash_screen/views/widgets/center_logo.dart';
import 'package:barokah_cars_project/app/routes/app_pages.dart';
import 'package:barokah_cars_project/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenController>(
      initState: (_){
        Timer(const Duration(seconds: 3), () {
          Get.offAllNamed(Routes.LOGIN);
        });
      },
      builder: (context){
        return const Scaffold(
          body: Padding(
            padding: EdgeInsets.only(bottom: 100),
            child: CenterLogo(
              logo: BaroImages.appLogo,
              width: 253,
              height: 53,
            ),
          ),
        );
      }
    );
  }
}
