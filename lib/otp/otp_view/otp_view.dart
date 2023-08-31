import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:productivity/comman/app_assets.dart';
import 'package:productivity/comman/app_colors.dart';
import 'package:productivity/comman/app_content.dart';
import 'package:productivity/profile/view/profile_view.dart';
import 'package:productivity/widgets/button.dart';
import 'package:productivity/widgets/text_widgets.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: SingleChildScrollView(
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
              const TextWidgets(
                text: AppContent.pleaseEnterCode,
                size: true,
              ),
              SizedBox(
                height: height * 0.04,
              ),
              OtpTextField(
                numberOfFields: 5,
                fillColor: AppColors.textfield,
                borderRadius: BorderRadius.circular(16),
                filled: true,
                enabledBorderColor: AppColors.textfield,
                showFieldAsBox: true,
                textStyle:
                    const TextStyle(color: Colors.white), // Text color here
                onCodeChanged: (String code) {},
                onSubmit: (String verificationCode) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    },
                  );
                },
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Button(
                  color: AppColors.button,
                  text: AppContent.confirm,
                  onTap: () => Get.to(
                        const ProfileView(),
                      )),
              SizedBox(
                height: height * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
