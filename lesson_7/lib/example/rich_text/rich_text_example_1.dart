import 'package:flutter/material.dart';

class RichTextExample1App extends StatelessWidget {
  const RichTextExample1App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('RichText Example'),
        ),
        body: const SafeArea(
          child: Center(
            child: RichTextExample(),
          ),
        ),
      ),
    );
  }
}

class RichTextExample extends StatelessWidget {
  const RichTextExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: const TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "G",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: "o",
              style: TextStyle(
                color: Colors.red,
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: "o",
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: "g",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: "l",
              style: TextStyle(
                color: Colors.green,
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: "e",
              style: TextStyle(
                color: Colors.red,
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
