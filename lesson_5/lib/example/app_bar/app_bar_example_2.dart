import 'package:flutter/material.dart';

class AppBarExample2App extends StatelessWidget {
  const AppBarExample2App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
      home: const AppBarExample2(),
    );
  }
}

class AppBarExample2 extends StatefulWidget {
  const AppBarExample2({super.key});

  @override
  State<AppBarExample2> createState() => _AppBarExample2State();
}

class _AppBarExample2State extends State<AppBarExample2> {
  final List<int> _items = List<int>.generate(51, (int index) => index);

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);

    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Demo'),
      ),
      body: SafeArea(
        child: GridView.builder(
          itemCount: _items.length,
          padding: const EdgeInsets.all(8.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 2.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return const Center(
                child: Text(
                  'Scroll to see the Appbar in effect.',
                  textAlign: TextAlign.center,
                ),
              );
            }
            return Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: _items[index].isOdd ? oddItemColor : evenItemColor,
              ),
              child: Text('Item $index'),
            );
          },
        ),
      ),
    );
  }
}
