import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:productivity/comman/app_assets.dart';
import 'package:productivity/comman/app_colors.dart';
import 'package:productivity/comman/app_content.dart';
import 'package:productivity/otp/otp_view/otp_view.dart';
import 'package:productivity/widgets/button.dart';
import 'package:productivity/widgets/custom_text_filed.dart';
import 'package:productivity/widgets/text_widgets.dart';
import 'package:productivity/widgets/transparent_button.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.07,
            ),
            //  SvgPicture.asset('images/rock2.svg'),
            Image.asset(
              AppAssets.logo,
              scale: 0.699,
            ),
            SizedBox(
              height: height * 0.03,
            ),
            const CustomTextFormField(hintText: AppContent.email),
            SizedBox(
              height: height * 0.02,
            ),
            const CustomTextFormField(hintText: AppContent.nick),
            SizedBox(
              height: height * 0.02,
            ),
            const CustomTextFormField(hintText: AppContent.password),
            SizedBox(
              height: height * 0.02,
            ),
            const CustomTextFormField(hintText: AppContent.confirmP),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.09),
              child: Row(
                children: [
                  Checkbox(
                    side: const BorderSide(color: Colors.white),
                    value: isChecked,
                    activeColor: AppColors.button,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked = newBool;
                      });
                    },
                  ),
                  const TextWidgets(text: AppContent.years)
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Button(
                color: AppColors.button,
                text: AppContent.signUp,
                onTap: () => Get.to(
                      const OtpView(),
                    )),
            SizedBox(
              height: height * 0.02,
            ),
            const TransparentButton(text: AppContent.register),
            SizedBox(
              height: height * 0.03,
            ),
            const Text(
              AppContent.continu,
              style: TextStyle(
                  color: AppColors.text,
                  fontSize: 16,
                  fontWeight: FontWeight.w200),
            ),
          ],
        ),
      ),
    );
  }
}
