import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:productivity/comman/app_colors.dart';
import 'package:productivity/comman/app_content.dart';
import 'package:productivity/profile/view/profile_view.dart';
import 'package:productivity/widgets/button.dart';
import 'package:productivity/widgets/text_widgets.dart';

class BalanceView extends StatelessWidget {
  const BalanceView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.06),
            Padding(
              padding: EdgeInsets.only(right: width * 0.8),
              child: TextButton(
                  onPressed: () {
                    Get.to(const ProfileView());
                  },
                  child: const ProfileText(text: AppContent.back)),
            ),
            const RedButton(text: AppContent.balnce),
            SizedBox(height: height * 0.03),
            const balanceCard(),
            SizedBox(height: height * 0.03),
            const balanceCard(
              deposit: AppContent.deposit,
            ),
          ],
        ),
      ),
    );
  }
}

class balanceCard extends StatelessWidget {
  const balanceCard({
    super.key,
    this.text = false,
    this.feeText = AppContent.fee,
    this.deposit,
    this.withdraw = AppContent.withdraw,
    this.feeDepends,
  });

  final bool text;
  final String? feeText;
  final String? deposit;
  final String? withdraw;
  final String? feeDepends;
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Container(
      height: height * 0.287,
      width: width * 0.766,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: const Color.fromARGB(255, 172, 169, 169),
      ),
      child: Column(
        children: [
          SizedBox(height: height * 0.02),
          TextWidgets(
              text: deposit ?? withdraw!, color: true, fontWeight: true),
          const TextWidgets(text: AppContent.enterAmount, color: true),
          SizedBox(height: height * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RedButton(
                  text: AppContent.withdraw,
                  color: true,
                  height: true,
                  width: true,
                  borderRadius: true,
                  onTap: () {}),
              SizedBox(width: width * 0.02),
              RedButton(
                  border: Border.all(color: Colors.yellow),
                  height: true,
                  width: true,
                  borderRadius: true,
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => Container(
                        height: height * 1,
                        width: width,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(44),
                          ),
                        ),
                        child: Column(
                          children: [
                            const Text(
                              'Add your payment information',
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.w400),
                            ),
                            const Text(
                              'Card information',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Container(
                              height: 128,
                              width: 370,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Colors.black,
                                ),
                              ),
                              child: Column(
                                children: [
                                  TextFormField(
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.black38),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.black38),
                                        borderRadius: BorderRadius.circular(5)
                                      ),
                                      hintText: 'Credit Card Number',
                                      hintStyle: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Colors.black38,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 14, vertical: 20),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: width * 0.43,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.grey,
                                        ),
                                        child: TextFormField(
                                          keyboardType: TextInputType.text,
                                          decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.black38),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.black38),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              hintText: 'Exp Date',
                                              hintStyle: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Colors.black38,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                              filled: true,
                                              fillColor: Colors.white,
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 14,
                                                      vertical: 19)
                                              //contentPadding:
                                              ),
                                        ),
                                      ),
                                      Container(
                                        decoration: const BoxDecoration(
                                            // borderRadius:
                                            //     BorderRadius.circular(5),
                                            // color: Colors.grey,
                                            ),
                                        width: width * 0.43,
                                        child: TextFormField(
                                          keyboardType: TextInputType.text,
                                          decoration: InputDecoration(
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.black38),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.black38),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            hintText: 'CVV',
                                            hintStyle: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                  color: Colors.black38,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            filled: true,
                                            fillColor: Colors.white,
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 14,
                                                    vertical: 19),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  text: AppContent.amount),
            ],
          ),
          SizedBox(height: height * 0.02),
          Image.asset('images/card.png', scale: height * 0.0009),
          SizedBox(height: height * 0.02),
          const TextWidgets(text: AppContent.minimum, color: true, size: true),
          const TextWidgets(text: AppContent.fee, color: true, size: true),
        ],
      ),
    );
  }
}
