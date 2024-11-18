import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Intro1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
          child: LottieBuilder.network(
        "https://lottie.host/a47f99a1-adb7-480f-a4dd-ab5db3de8be7/VJkC3lkUO2.json",
      )),
    );
  }
}
