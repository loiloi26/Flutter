import 'package:flutter/material.dart';

class SingleChildScrollViewExample1App extends StatelessWidget {
  const SingleChildScrollViewExample1App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SingleChildScrollView Demo'),
        ),
        backgroundColor: Colors.white,
        body: const SafeArea(
          child: SingleChildScrollViewExample1(),
        ),
        resizeToAvoidBottomInset: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SingleChildScrollViewExample1 extends StatefulWidget {
  const SingleChildScrollViewExample1({Key? key}) : super(key: key);

  @override
  State<SingleChildScrollViewExample1> createState() =>
      _SingleChildScrollViewExample1State();
}

class _SingleChildScrollViewExample1State
    extends State<SingleChildScrollViewExample1> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      reverse: false,
      scrollDirection: Axis.vertical,
      physics: const AlwaysScrollableScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 500,
            color: Colors.red,
          ),
          Container(
            height: 500,
            color: Colors.green,
          ),
          Container(
            height: 500,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
