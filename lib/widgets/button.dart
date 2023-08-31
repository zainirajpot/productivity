import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:productivity/comman/app_colors.dart';
import 'package:productivity/comman/app_content.dart';
import 'package:productivity/widgets/text_widgets.dart';

class Button extends StatefulWidget {
  final Color? color;
  final String text;
  final bool height;
  final bool width;
  final bool borderRadius;

  final VoidCallback? onTap;
  const Button({
    super.key,
    this.color,
    required this.text,
    this.onTap,
    this.height = false,
    this.width = false,
    this.borderRadius = false,
  });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
          height: widget.height ? height * 0.06 : height * 0.07,
          width: widget.width ? width * 0.666 : width * 0.753,
          decoration: BoxDecoration(
            color: AppColors.button,
            borderRadius: widget.borderRadius
                ? BorderRadius.circular(40)
                : BorderRadius.circular(15),
          ),
          child: Center(child: TextWidgets(text: widget.text))),
    );
  }
}

class RedButton extends StatefulWidget {
  final VoidCallback? onTap;
  final bool height;
  final bool width;
  final bool color;
  final Border? border;
  final String text;
  final bool borderRadius;
  const RedButton(
      {super.key,
      this.onTap,
      this.height = false,
      this.width = false,
      this.color = false, this.border,  this.borderRadius=false, required this.text});

  @override
  State<RedButton> createState() => _RedButtonState();
}

class _RedButtonState extends State<RedButton> {
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Center(
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          height: widget.height ? height * 0.03 : height * 0.06,
          width: widget.width ? width * 0.3 : width * 0.523,
          decoration: BoxDecoration(
            color: widget.color ? AppColors.textfield : AppColors.redButton,
            borderRadius: widget.borderRadius?BorderRadius.circular(50):BorderRadius.circular(15),
            border: widget.border,
          ),
          child:  Center(child: TextWidgets(text:widget.text,)),
        ),
      ),
    );
  }
}
