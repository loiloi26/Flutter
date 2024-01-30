class Message {
  final String name;
  final String avatar;
  final String text;
  final String time;
  final bool storied;

  const Message({
    required this.name,
    required this.avatar,
    required this.text,
    required this.time,
    this.storied = false,

  });
}
