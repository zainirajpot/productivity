import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:productivity/comman/app_assets.dart';
import 'package:productivity/comman/app_colors.dart';
import 'package:productivity/comman/app_content.dart';
import 'package:productivity/select_bet/bet_view/progress_indicator/progress_indicator.dart';
import 'package:productivity/profile/view/profile_view.dart';
import 'package:productivity/widgets/button.dart';
import 'package:productivity/widgets/text_widgets.dart';

class BetView extends StatelessWidget {
  const BetView({super.key});

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
              height: height * 0.09,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: width * 0.2,
              ),
              child: Row(
                children: [
                  Image.asset(
                    AppAssets.logo,
                    scale: 0.699,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: width * 0.07, top: height * 0.133),
                    child: Column(
                      children: [
                        const Text(
                          'nickname',
                          style: TextStyle(color: Colors.amber),
                        ),
                        Container(
                          height: 35,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: AppColors.textfield,
                          ),
                          child: const Center(
                            child: TextWidgets(text: AppContent.five),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: width * 0.833,
              ),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                      width: 4, color: const Color.fromARGB(255, 49, 155, 37)),
                ),
                child: const Center(
                  child: Text(
                    '\$',
                    style: TextStyle(
                        color: Color.fromARGB(255, 49, 155, 37),
                        fontWeight: FontWeight.w800,
                        fontSize: 19),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                height: height * 0.330,
                width: width * 0.857,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color.fromARGB(196, 15, 15, 20)),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Text(
                      'Select  bet',
                      style: GoogleFonts.loveYaLikeASister(
                          color: Colors.white,
                          fontSize: 31,
                          fontWeight: FontWeight.w200),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    const ProGressIndiCator(),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Button(
                      height: true, width: true, borderRadius: true,
                      text: 'Generate Data',
                      onTap: () => Get.to(const ProfileView()),
                      // style: GoogleFonts.loveYaLikeASister(
                      //     color: Colors.white,
                      //     fontSize: 31,
                      //     fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(22),
              child: Text(
                AppContent.bet,
                style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 185, 178, 178)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
