import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:productivity/comman/app_colors.dart';

class CustomSteppedProgressIndicator extends StatelessWidget {
  final double progress;

  const CustomSteppedProgressIndicator({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60, right: 60),
      child: LinearProgressIndicator(
        minHeight: 10,
        borderRadius: BorderRadius.circular(22),
        value: progress / 30,
       // color: AppColors.text,
      ),
    );
  }
}

//
class ProGressIndiCator extends StatefulWidget {
  const ProGressIndiCator({super.key});

  @override
  State<ProGressIndiCator> createState() => _ProGressIndiCatorState();
}

class _ProGressIndiCatorState extends State<ProGressIndiCator> {
  double currentProgress = 0.0;
  double selectedValue = 0.0; // Track the selected value
  bool isCompleted = false; // Track if progress is completed

  void updateProgress(double value) {
    setState(() {
      if (!isCompleted) {
        currentProgress += value;

        if (currentProgress >= 30.0) {
          currentProgress = 30.0;
          isCompleted = true;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomSteppedProgressIndicator(progress: currentProgress),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Draggable<double>(
                data: 5.0, // Value when dragged
                child: TextButton(
                  onPressed: () {
                    if (!isCompleted) {
                      selectedValue = 5.0;
                      updateProgress(selectedValue);
                    }
                  },
                  child: Text('5\$',
                      style: GoogleFonts.loveYaLikeASister(
                        fontSize: 25,
                        color: AppColors.text,
                      )),
                ),
                feedback: Material(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blue.withOpacity(0.5),
                    ),
                    child: Text('5\$',
                        style: GoogleFonts.loveYaLikeASister(
                          fontSize: 25,
                          color: AppColors.text,
                        )),
                  ),
                ),
              ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     TextButton(
          //       onPressed: () {
          //         if (!isCompleted) {
          //           selectedValue = 10.0;
          //           updateProgress(selectedValue);
          //         }
          //       },
          //       child: Text('3\$',
          //           style: GoogleFonts.loveYaLikeASister(
          //             fontSize: 25,
          //             color: AppColors.text,
          //           )),
          //     ),
          //     TextButton(
          //       onPressed: () {
          //         if (!isCompleted) {
          //           selectedValue = 10.0;
          //           updateProgress(selectedValue);
          //         }
          //       },
          //       child: Text('5\$',
          //           style: GoogleFonts.loveYaLikeASister(
          //             fontSize: 25,
          //             color: AppColors.text,
          //           )),
          //     ),
          //     TextButton(
          //       onPressed: () {
          //         if (!isCompleted) {
          //           selectedValue = 10.0;
          //           updateProgress(selectedValue);
          //         }
          //       },
          //       child: Text(
          //         '10\$',
          //         style: GoogleFonts.loveYaLikeASister(
          //           fontSize: 25,
          //           color: AppColors.text,
          //         ),
          //        ),
          //     ),
            ],
           ),
        ],
      ),
    );
  }
}
