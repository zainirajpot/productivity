import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:productivity/comman/app_colors.dart';

class CustomTextFormField extends StatefulWidget {
  final String hintText;

  const CustomTextFormField({
    super.key,
    required this.hintText,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  // bool isShow = true;
  @override
  Widget build(BuildContext context) {
   // var height = Get.height;
    var width = Get.width;

    return Container(
      width: width * 0.753,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        style: const TextStyle(color: AppColors.otherText),
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(225, 57, 56, 56),
          hintStyle: const TextStyle(color: AppColors.text, fontSize: 13),
          hintText: widget.hintText,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.transparent,
              // strokeAlign: 1,
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 14, vertical: 18),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }
}
