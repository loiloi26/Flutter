import 'dart:math';

import 'package:flutter/material.dart';

class ListViewExample3App extends StatelessWidget {
  const ListViewExample3App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView Demo'),
        ),
        backgroundColor: Colors.white,
        body: const SafeArea(
          child: ListViewExample3(),
        ),
        resizeToAvoidBottomInset: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ListViewExample3 extends StatefulWidget {
  const ListViewExample3({Key? key}) : super(key: key);

  @override
  State<ListViewExample3> createState() => _ListViewExample3State();
}

class _ListViewExample3State extends State<ListViewExample3> {
  final List<int> _dataList = List.generate(20, (index) => index + 1);
  final colors = <int, Color>{};

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: _dataList.map(
              (e) {
                return Container(
                  height: 100,
                  color: Color(Random().nextInt(0xffffffff)),
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
        ),
        Container(
          height: 32,
          color: Colors.black,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: _dataList.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 100,
                color: Color(Random().nextInt(0xffffffff)),
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
      ],
    );
  }
}
