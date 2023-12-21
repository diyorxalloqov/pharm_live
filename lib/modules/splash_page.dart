import 'package:flutter/material.dart';
import 'package:pharm_live/core/assets/app_images.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(AppImages.splash),fit: BoxFit.cover)
        ),
        child: Center(
          child: Text(""),
        ),
      ),
    );
  }
}