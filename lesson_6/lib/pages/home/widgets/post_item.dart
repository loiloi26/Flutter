import 'package:flutter/material.dart';
import 'package:flutter_lesson_5/pages/home/widgets/post_footer.dart';
import 'package:flutter_lesson_5/pages/home/widgets/post_header.dart';

import '../models/post.dart';

class PostItem extends StatelessWidget {
  const PostItem({
    required this.post,
    Key? key,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          PostHeader(post: post),
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              post.images.first,
              fit: BoxFit.fitWidth,
            ),
          ),
          PostFooter(post: post),
        ],
      ),
    );
  }
}
