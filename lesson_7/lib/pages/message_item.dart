import 'package:flutter/material.dart';
import 'package:flutter_lesson_5/pages/home/models/message.dart';

class MessageItem extends StatelessWidget {
  const MessageItem({super.key, required this.message});

  final Message message;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Stack(
            children: [
              Container(
                height: 88,
                width: 88,
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: message.storied
                      ? Border.all(
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                          width: 3,
                        )
                      : null, 
                ),
                child: Image.asset(
                  message.avatar,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(message.name),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      message.text,
                      style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.4)),
                    ),
                    flex: 5,
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(message.time,
                        style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.4))),
                    flex: 1,
                  ),
                ],
              ),
            ],
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.photo_camera,
              size: 30,
              color: const Color.fromARGB(255, 159, 156, 156),
            ))
      ],
    );
  }
}
