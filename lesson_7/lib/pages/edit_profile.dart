import 'package:flutter/material.dart';

class AppBarProfile extends StatelessWidget implements PreferredSizeWidget {
  const AppBarProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFFAFAFA),
      elevation: 0,
      leading: Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 6, left: 8),
          child: TextButton(
              onPressed: () {},
              child: const Text("Cancel",
                  style: TextStyle(
                      color: Color.fromRGBO(38, 38, 38, 1), fontSize: 16)))),
      leadingWidth: 85,
      centerTitle: true,
      title: const Padding(
          padding: EdgeInsets.only(top: 8, bottom: 6),
          child: Text(
            "Edit Profile",
            style: TextStyle(
                fontSize: 21,
                color: Color.fromRGBO(38, 38, 38, 1),
                fontWeight: FontWeight.bold),
          )),
      actions: [
        const Padding(
          padding: EdgeInsets.only(top: 8, bottom: 6, right: 13),
          child: Text(
            "Done",
            style: TextStyle(
                fontSize: 16,
                color: Color.fromRGBO(56, 151, 240, 1),
                fontWeight: FontWeight.bold),
          ),
        )
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

class ImageProfile extends StatelessWidget {
  const ImageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/avatar4.png",
              width: 130,
              height: 130,
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Center(
          child: Text("Change Profile Photo",
              style: TextStyle(
                  fontSize: 16,
                  color: Color.fromRGBO(56, 151, 240, 1),
                  fontWeight: FontWeight.bold)),
        )
      ],
    );
  }
}

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, right: 17),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Name",
                      style: TextStyle(
                          color: Color.fromRGBO(38, 38, 38, 1), fontSize: 17),
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    flex: 4,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      style: const TextStyle(
                        fontSize: 17,
                        color: Color(0xFF262626),
                      ),
                      decoration: InputDecoration(
                        hintText: 'Name',
                        fillColor: Color.fromRGBO(255, 255, 255, 1),
                        filled: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Username",
                      style: TextStyle(
                          color: Color.fromRGBO(38, 38, 38, 1), fontSize: 17),
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    flex: 4,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      style: const TextStyle(
                        fontSize: 17,
                        color: Color(0xFF262626),
                      ),
                      decoration: InputDecoration(
                        hintText: 'Username',
                        fillColor: Color.fromRGBO(255, 255, 255, 1),
                        filled: true,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Website",
                      style: TextStyle(
                          color: Color.fromRGBO(38, 38, 38, 1), fontSize: 17),
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    flex: 4,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      style: const TextStyle(
                        fontSize: 17,
                        color: Color(0xFF262626),
                      ),
                      decoration: InputDecoration(
                        hintText: 'Website',
                        fillColor: Color.fromRGBO(255, 255, 255, 1),
                        filled: true,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Bio",
                      style: TextStyle(
                          color: Color.fromRGBO(38, 38, 38, 1), fontSize: 17),
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    flex: 4,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      style: const TextStyle(
                        fontSize: 17,
                        color: Color(0xFF262626),
                      ),
                      decoration: InputDecoration(
                        hintText: 'Bio',
                        fillColor: Color.fromRGBO(255, 255, 255, 1),
                        filled: true,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class PrivateInfo extends StatefulWidget {
  const PrivateInfo({super.key});

  @override
  State<PrivateInfo> createState() => _PrivateInfoState();
}

class _PrivateInfoState extends State<PrivateInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, right: 17),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Private Information",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(38, 38, 38, 1),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Email",
                      style: TextStyle(
                          color: Color.fromRGBO(38, 38, 38, 1), fontSize: 17),
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    flex: 4,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      style: const TextStyle(
                        fontSize: 17,
                        color: Color(0xFF262626),
                      ),
                      decoration: InputDecoration(
                        hintText: 'Email',
                        fillColor: Color.fromRGBO(255, 255, 255, 1),
                        filled: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Phone",
                      style: TextStyle(
                          color: Color.fromRGBO(38, 38, 38, 1), fontSize: 17),
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    flex: 4,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      style: const TextStyle(
                        fontSize: 17,
                        color: Color(0xFF262626),
                      ),
                      decoration: InputDecoration(
                        hintText: 'Phone',
                        fillColor: Color.fromRGBO(255, 255, 255, 1),
                        filled: true,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Gender",
                      style: TextStyle(
                          color: Color.fromRGBO(38, 38, 38, 1), fontSize: 17),
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    flex: 4,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      style: const TextStyle(
                        fontSize: 17,
                        color: Color(0xFF262626),
                      ),
                      decoration: InputDecoration(
                        hintText: 'Gender',
                        fillColor: Color.fromRGBO(255, 255, 255, 1),
                        filled: true,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarProfile(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ImageProfile(),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Divider(
                  color: Color.fromRGBO(0, 0, 0, 0.2),
                  height: 0.05,
                ),
              ),
              Info(),
              Container(
                child: Divider(
                  color: Color.fromRGBO(0, 0, 0, 0.2),
                  height: 0.05,
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                    ),
                    child: Text("Switch to Professional Account",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(56, 151, 240, 1),
                        )),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              PrivateInfo(),
            ],
          ),
        ),
      ),
    );
  }
}
