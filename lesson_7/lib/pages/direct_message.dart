import 'package:flutter/material.dart';
import 'package:flutter_lesson_5/pages/home/models/message.dart';
import 'package:flutter_lesson_5/pages/message_item.dart';

class DirectMessageBar extends StatelessWidget implements PreferredSizeWidget {
  const DirectMessageBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFFAFAFA),
      elevation: 0,
      leading: Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 6, left: 8),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios_sharp),
            onPressed: () {},
          )),
      leadingWidth: 0,
      //centerTitle: true,
      title: const Padding(
          padding: EdgeInsets.only(top: 8, bottom: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "loi_jw",
                style: TextStyle(
                  fontSize: 21,
                  color: Color.fromRGBO(38, 38, 38, 1),
                ),
              ),
              Icon(Icons.keyboard_arrow_down)
            ],
          )),
      actions: [
        const Padding(
            padding: EdgeInsets.only(top: 8, bottom: 6, right: 13),
            child: Icon(Icons.add))
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0.5),
        child: Container(
          color: const Color(0x1A000000),
          height: 1,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SearchAnchor(
          builder: (BuildContext context, SearchController controller) {
        return SearchBar(
          hintText: "Search",
          backgroundColor: MaterialStateProperty.all(
              Color.fromARGB(30, 249, 249, 251)),
          controller: controller,
          padding: const MaterialStatePropertyAll<EdgeInsets>(
              EdgeInsets.symmetric(horizontal: 8.0)),
          leading: const Icon(Icons.search),
        );
      }, suggestionsBuilder:
              (BuildContext context, SearchController controller) {
        return List<ListTile>.generate(5, (int index) {
          final String item = 'item $index';
          return ListTile(
            title: Text(item),
          );
        });
      }),
    );
  }
}

class ListViewMessage extends StatelessWidget {
  const ListViewMessage({super.key, required this.messages});
  final List<Message> messages;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: messages.length,
      itemBuilder: (BuildContext context, int index) {
        if (index < messages.length) {
          return MessageItem(message: messages[index]);
        } else {
          return Container(); // Handle the case where the index is out of bounds
        }
      },
      separatorBuilder: (BuildContext context, int index) {
        return Container(
          height: 12,
          //color: Colors.black.withOpacity(0.1),
        );
      },
    );
  }
}

class DirectMessage extends StatefulWidget {
  const DirectMessage({super.key});

  @override
  State<DirectMessage> createState() => _DirectMessageState();
}

class _DirectMessageState extends State<DirectMessage> {
  List<Message> messages = [
    const Message(
        name: 'joshua_l',
        avatar: "assets/images/avatar1.png",
        text: "Have a nice day, bro!",
        time: "now",
        storied: true),
    const Message(
        name: 'karennne',
        avatar: "assets/images/avatar2.png",
        text: "Have a nice day, bro!",
        time: "now"),
    const Message(
        name: 'loi_jw',
        avatar: "assets/images/avatar3.png",
        text: "I heard this is a good movie, s…",
        time: "now"),
    const Message(
        name: 'martini_rond',
        avatar: "assets/images/avatar4.png",
        text: "See you on the next meeting!",
        time: "12p",
        storied: true),
    const Message(
        name: 'nmtphu',
        avatar: "assets/images/avatar2.png",
        text: "Have a nice day, bro!",
        time: "15p",
        storied: true),
    const Message(
        name: 'phuloi__',
        avatar: "assets/images/avatar4.png",
        text: "Thank you, bro!",
        time: "1h"),
    const Message(
        name: 'jamie.franco',
        avatar: "assets/images/avatar3.png",
        text: "Have a nice day, bro!",
        time: "2h"),
    const Message(
        name: 'm_humphrey',
        avatar: "assets/images/avatar1.png",
        text: "Cam on!",
        time: "4h"),
    const Message(
        name: 'm_humphrey',
        avatar: "assets/images/avatar1.png",
        text: "Cam on!",
        time: "5h",
        storied: true),
    const Message(
        name: 'm_humphrey',
        avatar: "assets/images/avatar1.png",
        text: "Cam on!",
        time: "8h")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DirectMessageBar(),
      body: Column(children: [
        SearchBarWidget(),
        SizedBox(
          height: 5,
        ),
        Expanded(
            child: ListViewMessage(
          messages: messages,
        ))
      ]),
    );
  }
}
