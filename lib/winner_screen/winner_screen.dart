import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:productivity/card_information.dart';
import 'package:productivity/comman/app_assets.dart';
import 'package:productivity/comman/app_colors.dart';

class WinnerScreen extends StatelessWidget {
  const WinnerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the confetti controller
    final controllerCenter =
        ConfettiController(duration: const Duration(seconds: 10));

    // Start the confetti animation when the screen is opened
    controllerCenter.play();

    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      backgroundColor: AppColors.splashColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // ConfettiAnimation(
              //   createParticlePath: (size) =>
              //       drawStar(size), // Pass the drawStar function here
              // ),
              Image.asset(AppAssets.logo, scale: 0.55),
              SizedBox(height: height * 0.04),
              Text(
                'Congratulations',
                style: GoogleFonts.loveYaLikeASister(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w200),
              ),
              SizedBox(height: height * 0.03),
              Text(
                'You won!',
                style: GoogleFonts.loveYaLikeASister(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w200),
              ),
              SizedBox(height: height * 0.04),
              Container(
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
            ],
          ),
        ),
      ),
    );
  }
}
