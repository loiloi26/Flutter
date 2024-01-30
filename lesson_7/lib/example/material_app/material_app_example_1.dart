import 'package:flutter/material.dart';

class MaterialAppExample1App extends StatelessWidget {
  const MaterialAppExample1App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
