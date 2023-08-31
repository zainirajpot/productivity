import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:productivity/comman/app_colors.dart';

class TextWidgets extends StatefulWidget {
  final String text;
  final bool size;
  final bool color;
  final bool fontWeight;
  const TextWidgets(
      {super.key,
      required this.text,
      this.size = false,
      this.color = false,
      this.fontWeight = false});

  @override
  State<TextWidgets> createState() => _TextWidgetsState();
}

class _TextWidgetsState extends State<TextWidgets> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
          fontSize: widget.size ? 13 : 17,
          fontWeight: widget.fontWeight ? FontWeight.w600 : FontWeight.w400,
          color: widget.color ? AppColors.blackText : AppColors.text),
    );
  }
}

class SplashText extends StatelessWidget {
  final String text;
  const SplashText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.merriweather(
          color: AppColors.otherText,
          fontSize: 20,
          fontWeight: FontWeight.w100),
    );
  }
}

class ProfileText extends StatelessWidget {
  final String text;
  final bool color;
  final VoidCallback? onPressed;
  const ProfileText(
      {super.key, required this.text, this.onPressed, this.color = false});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: color ? AppColors.text : AppColors.profileText,
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
