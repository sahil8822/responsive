import 'package:flutter/material.dart';
import 'package:responsive/port%20API%20file/home.dart';
import 'package:responsive/port%20API%20file/pages/intro1.dart';
import 'package:responsive/port%20API%20file/pages/intro2.dart';
import 'package:responsive/port%20API%20file/pages/intro3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmothPage extends StatefulWidget {
  SmothPage({super.key});

  @override
  State<SmothPage> createState() => _SmothPageState();
}

class _SmothPageState extends State<SmothPage> {
  PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              Intro2(),
              Intro1(),
              Intro3(),
            ],
          ),
          Container(
              alignment: Alignment(0, 0.8),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                        onTap: () {
                          _controller.jumpTo(2);
                        },
                        child: Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black),
                          child: Center(
                            child: Text(
                              'Skip',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        )),
                    SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                    ),
                    onLastPage
                        ? GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home()));
                            },
                            child: Container(
                              height: 40,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black),
                              child: Center(
                                child: Text(
                                  "Done",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                  ),
                                ),
                              ),
                            ))
                        : GestureDetector(
                            onTap: () {
                              _controller.nextPage(
                                  duration: Duration(milliseconds: 700),
                                  curve: Curves.easeIn);
                            },
                            child: Container(
                              height: 40,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black),
                              child: Center(
                                child: Text(
                                  "Next",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                  ),
                                ),
                              ),
                            ),
                          )
                  ]))
        ],
      ),
    );
  }
}
