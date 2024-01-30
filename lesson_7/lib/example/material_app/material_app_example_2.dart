import 'package:flutter/material.dart';

class MaterialAppExample2App extends StatelessWidget {
  const MaterialAppExample2App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Home Route'),
            ),
          );
        },
        '/login': (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Login Route'),
            ),
          );
        }
      },
    );
  }
}
