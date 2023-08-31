import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:productivity/comman/app_assets.dart';
import 'package:productivity/comman/app_colors.dart';
import 'package:productivity/comman/app_content.dart';
import 'package:productivity/forgett_password/view/forgett_view.dart';
import 'package:productivity/select_bet/bet_view/bet_view.dart';
import 'package:productivity/sign_up/view/sign_up_view.dart';
import 'package:productivity/widgets/button.dart';
import 'package:productivity/widgets/custom_text_filed.dart';
import 'package:productivity/widgets/text_widgets.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      backgroundColor:AppColors.backGround,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.07,
              ),
              Image.asset(
                AppAssets.logo,
                scale: 0.66,
              ),
              SizedBox(
                height: height * 0.04,
              ),
              const CustomTextFormField(hintText: AppContent.email),
              SizedBox(
                height: height * 0.02,
              ),
              const CustomTextFormField(hintText: AppContent.password),
              SizedBox(
                height: height * 0.02,
              ),
              Button(
                color: AppColors.button,
                text: AppContent.login,
                onTap: () => Get.to(
                  const BetView(),
                ),
              ),
               SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.4),
                child: GestureDetector(onTap: () => Get.to(const ForgettPassword()),child: const TextWidgets(text: 'ForgettPassword')),
              ),
              SizedBox(
                height: height * 0.130,
              ),
              Button(
                  color: AppColors.button,
                  text: AppContent.notRegister,
                  onTap: () => Get.to(
                        const SignUpView(),
                      )),
              SizedBox(
                height: height * 0.04,
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
      ),
    );
  }
}
