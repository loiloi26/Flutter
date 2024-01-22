import 'package:flutter/material.dart';

class SafeAreaExample1App extends StatelessWidget {
  const SafeAreaExample1App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SafeArea Example 1'),
        ),
        backgroundColor: Colors.red.shade200,
        body: SafeArea(
          child: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            color: Colors.blueGrey.shade200,
            child: const Center(
              child: Text(
                'This is the content of the app',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
