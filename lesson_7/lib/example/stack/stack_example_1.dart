import 'package:flutter/material.dart';

class StackExample1App extends StatelessWidget {
  const StackExample1App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stack Demo'),
        ),
        backgroundColor: Colors.white,
        body: const SafeArea(
          child: StackExample1(),
        ),
        resizeToAvoidBottomInset: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class StackExample1 extends StatefulWidget {
  const StackExample1({Key? key}) : super(key: key);

  @override
  State<StackExample1> createState() => _StackExample1State();
}

class _StackExample1State extends State<StackExample1> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
              child: Stack(
                alignment: Alignment.centerRight,
                fit: StackFit.loose,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.orange,
                  ),
                  const Positioned(
                    top: 50,
                    left: 50,
                    child: Text(
                      'Hello World!',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
