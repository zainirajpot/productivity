import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:productivity/comman/app_assets.dart';
import 'package:productivity/comman/app_colors.dart';
import 'package:productivity/winner_screen/winner_screen.dart';

class LoserScreen extends StatelessWidget {
  const LoserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      backgroundColor: AppColors.splashColor,
      body: Padding(
        padding: EdgeInsets.only(top: height * 0.09, left: 22, right: 22),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.133),
              Image.asset(AppAssets.logo, scale: 0.55),
              SizedBox(height: height * 0.04),
              Text(
                'You Played well!',
                style: GoogleFonts.loveYaLikeASister(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w200),
              ),
              SizedBox(height: height * 0.03),
              Text(
                'Try again next time',
                style: GoogleFonts.loveYaLikeASister(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w200),
              ),
              SizedBox(height: height * 0.04),
              GestureDetector(
                onTap: () {
                  Get.to(const WinnerScreen());
                },
                child: Container(
                  height: height * 0.05,
                  width: width * 0.235,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: AppColors.button),
                  child: const Center(
                      child: Text(
                    'OK!',
                    style: TextStyle(color: AppColors.text),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
