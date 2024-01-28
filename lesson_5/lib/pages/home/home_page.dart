import 'package:flutter/material.dart';
import 'package:flutter_lesson_5/pages/home/models/story.dart';
import 'package:flutter_lesson_5/pages/home/widgets/home_app_bar.dart';
import 'package:flutter_lesson_5/pages/home/widgets/story_list_view.dart';

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
    const Story(name: 'zackjohn222222', avatar: 'assets/images/avatar2.png'),
    const Story(name: 'kieron_d', avatar: 'assets/images/avatar3.png'),
    const Story(name: 'craig_love', avatar: 'assets/images/avatar4.png'),
    const Story(name: 'karennne', avatar: 'assets/images/avatar1.png'),
    const Story(name: 'zackjohn', avatar: 'assets/images/avatar2.png'),
    const Story(name: 'kieron_d', avatar: 'assets/images/avatar3.png'),
    const Story(name: 'craig_love', avatar: 'assets/images/avatar4.png'),
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
              child: Container(
                  //color: Colors.orange,
                  child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    child: Row(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          'assets/images/profile.png',
                          width: 42,
                          height: 42,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("loi_jw"),
                                SizedBox(
                                  width: 5,
                                ),
                                Image.asset('assets/icons/OfficialIcon.png')
                              ],
                            ),
                            Text("Ho Chi Minh, Viet Nam")
                          ]),
                      Spacer(),
                      Image.asset('assets/icons/MoreIcon.png')
                    ]),
                  ),
                  Container(
                    child: Image.asset(
                      'assets/images/post.png',
                      width: double.infinity, // Takes full width
                      height: 375, // Adjust the height as needed
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Expanded(
                      //     child: Row(
                      //         // children: [
                      //         //   Image.asset('assets/icons/Like.png'),
                      //         //   SizedBox(
                      //         //     width: 16,
                      //         //   ),
                      //         //   Image.asset('assets/icons/Comment.png'),
                      //         //   SizedBox(
                      //         //     width: 16,
                      //         //   ),
                      //         //   Image.asset('assets/icons/Messanger.png')
                      //         // ],
                      //         )),
                      // Image.asset('assets/icons/Pagination.png'),
                      // Expanded(
                      //   child: Container(),
                      // )
                      Expanded(child: Container()),
                      
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Image.asset('assets/images/profile.png',
                          width: 29, height: 29),
                      SizedBox(
                        width: 8,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text: 'Liked by '),
                            TextSpan(
                              text: 'craig_love',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: ' and '),
                            TextSpan(
                              text: '44,686 others',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(6),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'loi_jw',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      ' The game in Japan was amazing and I want to share some photos ',
                                ),
                              ],
                            ),
                            softWrap: true,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
