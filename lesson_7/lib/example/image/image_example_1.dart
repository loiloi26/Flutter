import 'package:flutter/material.dart';
import 'package:flutter_lesson_5/pages/home/widgets/home_app_bar.dart';

class ImageExample1App extends StatelessWidget {
  const ImageExample1App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: const HomeAppBar(),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  'assets/images/profile.png',
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Image.network(
                'https://ongchaulaptrinh.github.io/images/profile.png',
              )
            ],
          ),
        ),
      ),
    );
  }
}
