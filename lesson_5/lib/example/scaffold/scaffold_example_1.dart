import 'package:flutter/material.dart';

class ScaffoldExample1App extends StatelessWidget {
  const ScaffoldExample1App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Scaffold Example 1'),
        ),
        body: const Center(
          child: Text('Xin chào các bạn'),
        ),
        backgroundColor: Colors.blueGrey.shade200,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.favorite,
            color: Colors.pinkAccent,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(height: 50.0),
        ),
      ),
    );
  }
}
