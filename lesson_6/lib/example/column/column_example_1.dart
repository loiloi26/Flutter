import 'package:flutter/material.dart';
import 'package:flutter_lesson_5/pages/home/widgets/home_app_bar.dart';

import '../../pages/home/models/story.dart';
import '../../pages/home/widgets/story_item.dart';

class ColumnExample1App extends StatelessWidget {
  const ColumnExample1App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: HomeAppBar(),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    StoryItem(
                      story: Story(
                        name: 'Your Story',
                        avatar: 'assets/images/avatar.png',
                      ),
                    ),
                    SizedBox(width: 12),
                    StoryItem(
                      story: Story(
                        name: 'Your Story',
                        avatar: 'assets/images/avatar.png',
                      ),
                    ),
                    SizedBox(width: 12),
                    StoryItem(
                      story: Story(
                        name: 'Your Story',
                        avatar: 'assets/images/avatar.png',
                      ),
                    ),
                    SizedBox(width: 12),
                    StoryItem(
                      story: Story(
                        name: 'Your Story',
                        avatar: 'assets/images/avatar.png',
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
