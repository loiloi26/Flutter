import 'dart:math';

import 'package:flutter/material.dart';

class ListViewExample2App extends StatelessWidget {
  const ListViewExample2App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView Demo'),
        ),
        backgroundColor: Colors.white,
        body: const SafeArea(
          child: ListViewExample2(),
        ),
        resizeToAvoidBottomInset: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ListViewExample2 extends StatefulWidget {
  const ListViewExample2({Key? key}) : super(key: key);

  @override
  State<ListViewExample2> createState() => _ListViewExample2State();
}

class _ListViewExample2State extends State<ListViewExample2> {
  final Map<String, List<String>> _dataMap = {
    'Group 1': ['Item 11', 'Item 12', 'Item 13'],
    'Group 2': ['Item 21', 'Item 22', 'Item 24', 'Item 25', 'Item 26', 'Item 27'],
    'Group 3': ['Item 37', 'Item 38', 'Item 39'],
    'Group 4': ['Item 40', 'Item 41', 'Item 42', 'Item 43', 'Item 44'],
    'Group 5': ['Item 51', 'Item 52', 'Item 53'],
    'Group 6': ['Item 67', 'Item 68', 'Item 69'],
  };

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _dataMap.length * 2,
      itemBuilder: (BuildContext context, int index) {
        if (index.isOdd) {
          return const SizedBox();
        }

        final groupIndex = index ~/ 2;
        final groupTitle = _dataMap.keys.elementAt(groupIndex);
        final groupItems = _dataMap[groupTitle] ?? [];

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildHeader(groupTitle),
            ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: groupItems.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 100,
                  color: Color(Random().nextInt(0xffffffff)),
                  child: Center(
                    child: Text(
                      groupItems[index],
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildHeader(String title) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.grey[300],
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
