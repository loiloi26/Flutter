import 'package:flutter/material.dart';
import 'package:flutter_lesson_5/pages/home/models/story.dart';
import 'package:flutter_lesson_5/pages/home/widgets/home_app_bar.dart';
import 'package:flutter_lesson_5/pages/home/widgets/post_list_view.dart';
import 'package:flutter_lesson_5/pages/home/widgets/story_list_view.dart';

import 'models/post.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Story> stories = [
    const Story(name: 'Your Story', avatar: 'assets/images/avatar.png'),
    const Story(
      name: 'karennne',
      avatar: 'assets/images/avatar1.png',
      isLive: true,
    ),
    const Story(name: 'zackjohn', avatar: 'assets/images/avatar2.png'),
    const Story(name: 'kieron_d', avatar: 'assets/images/avatar3.png'),
    const Story(name: 'craig_love', avatar: 'assets/images/avatar4.png'),
    const Story(name: 'karennne', avatar: 'assets/images/avatar1.png'),
    const Story(name: 'zackjohn', avatar: 'assets/images/avatar2.png'),
    const Story(name: 'kieron_d', avatar: 'assets/images/avatar3.png'),
    const Story(name: 'craig_love', avatar: 'assets/images/avatar4.png'),
  ];

  List<Post> posts = [
    const Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar1.png',
      address: 'Tokyo, Japan',
      images: ["assets/images/post.png"],
      comment: "The game in Japan was amazing and I want to share some photos",
      totalLike: 44686,
      like: Like(
        name: "craig_love",
        avatar: "assets/images/avatar4.png",
      ),
      isOfficial: true,
    ),
    const Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar2.png',
      images: ["assets/images/post.png"],
      address: 'Tokyo, Japan',
      comment: "The game in Japan was amazing and I want to share some photos",
      totalLike: 44686,
      like: Like(
        name: "craig_love",
        avatar: "assets/images/avatar4.png",
      ),
    ),
    const Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar3.png',
      images: ["assets/images/post.png"],
      address: 'Tokyo, Japan',
      comment: "The game in Japan was amazing and I want to share some photos",
      totalLike: 44686,
      like: Like(
        name: "craig_love",
        avatar: "assets/images/avatar4.png",
      ),
    ),
    const Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar4.png',
      images: ["assets/images/post.png"],
      address: 'Tokyo, Japan',
      comment: "The game in Japan was amazing and I want to share some photos",
      totalLike: 44686,
      like: Like(
        name: "craig_love",
        avatar: "assets/images/avatar4.png",
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            StoryListView(
              stories: stories,
            ),
            Expanded(
              child: PostListView(
                posts: posts,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
