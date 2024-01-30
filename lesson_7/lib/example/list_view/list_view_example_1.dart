import 'dart:math';

import 'package:flutter/material.dart';

class ListViewExample1App extends StatelessWidget {
  const ListViewExample1App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView Demo'),
        ),
        backgroundColor: Colors.white,
        body: const SafeArea(
          child: ListViewExample1(),
        ),
        resizeToAvoidBottomInset: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ListViewExample1 extends StatefulWidget {
  const ListViewExample1({Key? key}) : super(key: key);

  @override
  State<ListViewExample1> createState() => _ListViewExample1State();
}

class _ListViewExample1State extends State<ListViewExample1> {
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
    return Column(
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
        Expanded(
          child: ListView.builder(
            controller: _scrollController,
            itemCount: _dataList.length + 1,
            itemBuilder: (BuildContext context, int index) {
              if (index == _dataList.length) {
                return _isLoading
                    ? const SizedBox(
                        height: 100,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      )
                    : const SizedBox();
              }
              if (!colors.containsKey(index)) {
                final color = Color(Random().nextInt(0xffffffff));
                colors[index] = color;
              }

              return Container(
                height: 100,
                color: colors[index],
                child: Center(
                  child: Text(
                    index.toString(),
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            },
          ),
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
    );
  }
}
