class Post {
  const Post({
    required this.name,
    required this.avatar,
    required this.address,
    required this.totalLike,
    required this.like,
    required this.comment,
    required this.images,
    this.isOfficial = false,
  });

  final String name;

  final String avatar;

  final String address;

  final String comment;

  final int totalLike;

  final List<String> images;

  final Like like;

  final bool isOfficial;
}

class Like {
  const Like({
    required this.name,
    required this.avatar,
  });

  final String name;

  final String avatar;
}

class Comment {
  const Comment({
    required this.name,
    required this.content,
  });

  final String name;

  final String content;
}