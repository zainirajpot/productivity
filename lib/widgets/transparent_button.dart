import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:productivity/widgets/text_widgets.dart';

class TransparentButton extends StatelessWidget {
  //final Color color;
  final String text;
   final VoidCallback? onTap;
  const TransparentButton({
    super.key,
    //required this.color,
    required this.text, this.onTap,  
  });

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: height * 0.07,
          width: width * 0.753,
          decoration: BoxDecoration(
           // color: color,
            borderRadius: BorderRadius.circular(15,),
            border: Border.all(color: Colors.white)
          ),
          child: Center(child: TextWidgets(text: text))
          // Text(text,style: TextStyle(color: AppColors.text),),
          ),
    );
  }
}
