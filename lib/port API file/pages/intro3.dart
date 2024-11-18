import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Intro3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: LottieBuilder.network(
              'https://lottie.host/831f6b46-2d91-4798-ae5b-39ff9209dec2/yxfrkM1sKT.json',
            ),
          ),
          SizedBox(height: 10),
          Text(
            "W  E  L  C  O  M",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text('To the shoping')
        ],
      ),
    );
  }
}
