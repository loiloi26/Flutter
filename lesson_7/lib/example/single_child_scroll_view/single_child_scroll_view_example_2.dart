import 'package:flutter/material.dart';

class SingleChildScrollViewExample2App extends StatelessWidget {
  const SingleChildScrollViewExample2App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SingleChildScrollView Demo'),
        ),
        backgroundColor: Colors.white,
        body: const SafeArea(
          child: SingleChildScrollViewExample2(),
        ),
        resizeToAvoidBottomInset: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SingleChildScrollViewExample2 extends StatefulWidget {
  const SingleChildScrollViewExample2({Key? key}) : super(key: key);

  @override
  State<SingleChildScrollViewExample2> createState() =>
      _SingleChildScrollViewExample2State();
}

class _SingleChildScrollViewExample2State
    extends State<SingleChildScrollViewExample2> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
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
          ElevatedButton(
            onPressed: () {
              _scrollController.animateTo(
                _scrollController.position.maxScrollExtent,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            child: const Text('Scroll to Bottom'),
          ),
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
          ElevatedButton(
            onPressed: () {
              _scrollController.animateTo(
                0,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            child: const Text('Scroll to Top'),
          ),
        ],
      ),
    );
  }
}
