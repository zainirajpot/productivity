import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:productivity/comman/app_assets.dart';
import 'package:productivity/comman/app_colors.dart';
import 'package:productivity/comman/app_content.dart';
import 'package:productivity/login/login_binding/login_binding.dart';
import 'package:productivity/login/login_view/login_view.dart';
import 'package:productivity/widgets/text_widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5)).then(
      (value) => Get.off(
        const LoginView(),
        binding: LoginBinding(),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    // var width = Get.width;
    return Scaffold(
      backgroundColor: AppColors.splashColor,
      body: Padding(
        padding: EdgeInsets.only(top: height * 0.09, left: 22, right: 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.04,
            ),
             Image.asset(
                AppAssets.logo,
                scale: 0.66,
              ),
            SizedBox(
              height: height * 0.04,
            ),
            const SplashText(text: AppContent.wellcom),
            SizedBox(
              height: height * 0.04,
            ),
            const SplashText(text: AppContent.getReady),
          ],
        ),
      ),
    );
  }
}
