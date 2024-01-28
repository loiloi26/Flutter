import 'package:flutter/cupertino.dart';
import 'package:flutter_lesson_5/pages/home/widgets/avatar_item.dart';

import '../models/story.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    Key? key,
    required this.story,
  }) : super(key: key);

  final Story story;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AvatarItem(
          avatar: story.avatar,
          isLive: story.isLive,
        ),
        Text(
          story.name,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
