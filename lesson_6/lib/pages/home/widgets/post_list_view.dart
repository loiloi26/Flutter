import 'package:flutter/material.dart';
import 'package:flutter_lesson_5/pages/home/widgets/post_item.dart';

import '../models/post.dart';

class PostListView extends StatelessWidget {
  const PostListView({
    required this.posts,
    Key? key,
  }) : super(key: key);

  final List<Post> posts;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return PostItem(
          post: posts[index],
        );
      },
      itemCount: posts.length,
      separatorBuilder: (BuildContext context, int index) {
        return Container(
          height: 16,
          color: Colors.black.withOpacity(0.1),
        );
      },
    );
  }
}
