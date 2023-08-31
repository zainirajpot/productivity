import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:productivity/balance_Screen/balance_View/balance_view.dart';
import 'package:productivity/card_information.dart';
import 'package:productivity/otp/otp_view/otp_packge_view.dart';
import 'package:productivity/otp/otp_view/otp_view.dart';
import 'package:productivity/select_bet/bet_view/bet_view.dart';
// import 'package:productivity/animation.dart';
// import 'package:productivity/login/login_view/login_view.dart';
// import 'package:productivity/progress_indicator/progress_indicator.dart';
// import 'package:productivity/profile/view/profile_view.dart';
// import 'package:productivity/select_bet/bet_view/bet_view.dart';
// import 'package:productivity/sign_up/view/sign_up_view.dart';
import 'package:productivity/splash/splash_screen.dart';
import 'package:productivity/loser_screen/loser_screen.dart';
import 'package:productivity/winner_screen/winner_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Poductivity App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     // home: const ConfettiAnimation(),
      //  home: const SplashScreen(),
      // home:const LoserScreen(),
      //  home: const BetView(),
      // home: LoginView(),
      // home: SignUpView(),
      //home:ProfileView(),
      //home: const ProGressIndiCator(),
      //home: Animationcuston(),
//    home: const BalanceView(),
home: const WinnerScreen(),

    );
  }
}
