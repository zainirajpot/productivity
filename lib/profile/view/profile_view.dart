import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:productivity/balance_Screen/balance_View/balance_view.dart';
import 'package:productivity/comman/app_assets.dart';
import 'package:productivity/comman/app_colors.dart';
import 'package:productivity/comman/app_content.dart';
import 'package:productivity/widgets/button.dart';
import 'package:productivity/widgets/text_widgets.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

bool light = true;

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.08,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      AppAssets.face,
                      height: 180,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 130, top: 37),
                        child: SvgPicture.asset(AppAssets.vector)),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    const Text(
                      AppContent.nick,
                      style: TextStyle(
                          color: AppColors.text,
                          fontSize: 36,
                          fontWeight: FontWeight.w700),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                          left: 165,
                        ),
                        child: SvgPicture.asset(AppAssets.vector)),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    const Text(
                      AppContent.com,
                      style: TextStyle(
                        color: AppColors.text,
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                        decorationThickness: 2,
                        decorationStyle: TextDecorationStyle.solid,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 172,
                      ),
                      child: SvgPicture.asset(AppAssets.vector, height: 13),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: height * 0.03,
            ),
            const Center(
                child: Button(
              text: AppContent.save,
              borderRadius: true,
              height: true,
              width: true,
            )),
            SizedBox(
              height: height * 0.03,
            ),

           RedButton(text: AppContent.balnce,
            onTap: () => Get.to(const BalanceView()),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            const Center(
                child: TextWidgets(
              text: AppContent.click,
              size: true,
            )),
            SizedBox(
              height: height * 0.177,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 17),
              child: ProfileText(text: AppContent.notification),
            ),
            Center(
              child: Container(
                height: height * 0.07,
                width: width * 0.893,
                decoration: BoxDecoration(
                  color: AppColors.textfield,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TextWidgets(text: AppContent.turnOn),
                      Switch(
                        value: light,
                        activeColor: Colors.grey,
                        onChanged: (bool value) {
                          setState(() {
                            light = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProfileText(
                    onPressed: () {},
                    text: AppContent.logOut,
                  ),
                  ProfileText(
                    text: AppContent.terms,
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
