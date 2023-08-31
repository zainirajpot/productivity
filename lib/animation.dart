import 'package:flutter/material.dart';
import 'package:productivity/comman/app_assets.dart';


class Animationcuston extends StatefulWidget {
  const Animationcuston({super.key});

  @override
  _AnimationcustonState createState() => _AnimationcustonState();
}

class _AnimationcustonState extends State<Animationcuston> {
  double rotationAngle = 0.0;

  @override
  void initState() {
    super.initState();
    // Animation loop
    startRotationAnimation();
  }

  void startRotationAnimation() {
    Future.delayed(const Duration(milliseconds: 70), () {
      setState(() {
        rotationAngle += 0.1; // Change this value to control rotation speed
        if (rotationAngle >= 360) {
          rotationAngle = 0;
        }
      });
      startRotationAnimation();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Round and Round Animation'),
      ),
      body: Center(
        child: Transform.rotate(
          angle: rotationAngle,
          child: Image.asset(
            AppAssets.logo,
            scale: 0.699,
          ),
        ),
      ),
    );
  }
}
