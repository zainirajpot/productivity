import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:productivity/comman/app_assets.dart';
import 'package:productivity/comman/app_colors.dart';
import 'package:productivity/comman/app_content.dart';
import 'package:productivity/otp/otp_view/otp_view.dart';
import 'package:productivity/widgets/button.dart';
import 'package:productivity/widgets/custom_text_filed.dart';
import 'package:productivity/widgets/text_widgets.dart';

class ForgettPassword extends StatelessWidget {
  const ForgettPassword({super.key});

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
   // var width = Get.width;
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.1,
                ),
                Image.asset(
                  AppAssets.logo,
                  scale: 0.66,
                ),
                 SizedBox(
                  height: height * 0.07,
                ),
                const TextWidgets(text: AppContent.pleaseEnterP,size: true,),
                SizedBox(
                  height: height * 0.04,
                ),
                const CustomTextFormField(hintText: AppContent.email),
                SizedBox(
                  height: height * 0.02,
                ),
                Button(
                    color: AppColors.button,
                    text: AppContent.confirm,
                    onTap: () => Get.to(
                          const OtpView(),
                        )),
                SizedBox(
                  height: height * 0.04,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
