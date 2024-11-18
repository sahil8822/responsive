import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Intro2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: LottieBuilder.network(
            'https://lottie.host/030ac1eb-8a52-4ab5-b9da-1d08b1618f4e/IYmwdNcwqK.json'),
      ),
    );
  }
}
