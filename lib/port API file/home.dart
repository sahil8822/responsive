import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            stretch: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "E X P L O R",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            leading: Icon(
              Icons.menu_book_rounded,
              color: Colors.grey,
            ),
            backgroundColor: Colors.black,
            expandedHeight: 300,
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 200,
            ),
            
          ),
        ],
      ),
    );
  }
}
