import 'dart:math';

import 'package:flutter/material.dart';

class SingleChildScrollViewExample3App extends StatelessWidget {
  const SingleChildScrollViewExample3App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SingleChildScrollView Demo'),
        ),
        backgroundColor: Colors.white,
        body: const SafeArea(
          child: SingleChildScrollViewExample3(),
        ),
        resizeToAvoidBottomInset: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SingleChildScrollViewExample3 extends StatefulWidget {
  const SingleChildScrollViewExample3({Key? key}) : super(key: key);

  @override
  State<SingleChildScrollViewExample3> createState() =>
      _SingleChildScrollViewExample3State();
}

class _SingleChildScrollViewExample3State
    extends State<SingleChildScrollViewExample3> {
  final ScrollController _scrollController = ScrollController();
  final List<int> _dataList = List.generate(20, (index) => index + 1);
  bool _isLoading = false;
  final colors = <int, Color>{};

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      _loadMoreData();
    }
  }

  Future<void> _loadMoreData() async {
    if (!_isLoading) {
      setState(() {
        _isLoading = true;
      });

      await Future.delayed(const Duration(seconds: 2));

      List<int> newDataList =
          List.generate(10, (index) => _dataList.length + index + 1);
      setState(() {
        _dataList.addAll(newDataList);
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: _dataList.map(
              (e) {
                if (!colors.containsKey(e)) {
                  final color = Color(Random().nextInt(0xffffffff));
                  colors[e] = color;
                }

                return Container(
                  height: 100,
                  color: colors[e],
                  child: Center(
                    child: Text(
                      '$e',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ).toList(),
          ),
          _isLoading
              ? const SizedBox(
                  height: 100,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
