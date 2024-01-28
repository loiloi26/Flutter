import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? _username;
  String? _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 110,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/instagram_logo.svg',
                width: 182,
                fit: BoxFit.fitWidth,
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Form(
              child: Column(
            children: [
              SizedBox(
                width: 393,
                child: TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Color(0xFF3797EF),
                          width: 1,
                        ),
                      ),
                      hintText: 'Username',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                              width: 1, color: Color.fromRGBO(0, 0, 0, 0.2))),
                      fillColor: Color.fromRGBO(250, 250, 250, 1),
                      filled: true,
                      hintStyle: TextStyle(
                          fontSize: 14, color: Color.fromRGBO(0, 0, 0, 0.2)),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8)),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              SizedBox(
                width: 393,
                child: TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Color(0xFF3797EF),
                          width: 1,
                        ),
                      ),
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                              width: 1, color: Color.fromRGBO(0, 0, 0, 0.2))),
                      fillColor: Color.fromRGBO(250, 250, 250, 1),
                      filled: true,
                      hintStyle: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(0, 0, 0, 0.2),
                          fontStyle: FontStyle.normal),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 393,
                height: 65,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                            color: Color.fromRGBO(55, 151, 239, 1),
                            fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 393,
                child: ElevatedButton(
                    onPressed: null,
                    child: Text(
                      "Login",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Color.fromRGBO(55, 151, 239, 1),
                      // foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      disabledBackgroundColor: Color.fromRGBO(95, 169, 239, 1),
                      disabledForegroundColor: Colors.white,

                      //shape: RoundedRectangleBorder(borderRadius: 10)
                    )),
              )
            ],
          )),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/fb.png',
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Log in with Facebook",
                style: TextStyle(
                    color: Color.fromRGBO(55, 151, 239, 1),
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 393,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                    height: 0.05,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 33.0),
                  child: Text(
                    "OR",
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.4),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                    height: 0.05,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: 'Don’t have an account?',
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.4), fontSize: 18)),
                TextSpan(
                    text: " Sign Up.",
                    style: TextStyle(
                        color: Color.fromRGBO(55, 151, 239, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                        // Add any other styles you want
                        ))
              ]))
            ],
          ),
          Container(
              height: 130,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 90, 0, 0),
                child: Divider(
                  color: Color.fromRGBO(60, 60, 67, 0.29),
                  height: 0,
                ),
              )),
          SizedBox(
            height: 25,
          ),
          Text(
            "Instagram от Facebook",
            style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.4)),
          )
        ],
      )),
    );
  }
}
