import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Shoping cart',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 800),
                width: isExpanded ? 180 : 90,
                height: 60,
                decoration: BoxDecoration(
                    color: isExpanded ? Colors.black : Colors.black54,
                    borderRadius: BorderRadius.circular(isExpanded ? 30 : 10)),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 33,
                      ),
                      Icon(
                        isExpanded ? Icons.check : Icons.shopping_cart,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      if (isExpanded == true)
                        Text(
                          'Deon to this',
                          style: TextStyle(color: Colors.white),
                        )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
