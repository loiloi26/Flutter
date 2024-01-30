import 'package:flutter/material.dart';
import 'package:flutter_lesson_5/pages/home/widgets/home_app_bar.dart';

import '../../pages/home/widgets/avatar_item.dart';

class ContainerExample1App extends StatelessWidget {
  const ContainerExample1App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: HomeAppBar(),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: AvatarItem(
                  avatar: 'assets/images/avatar.png',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
