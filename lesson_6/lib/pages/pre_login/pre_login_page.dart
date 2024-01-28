import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PreLoginPage extends StatefulWidget {
  const PreLoginPage({super.key});

  @override
  State<PreLoginPage> createState() => _PreLoginPageState();
}

class _PreLoginPageState extends State<PreLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(
                flex: 3,
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
                height: 26,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/avatar2.png',
                        width: 115,
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(height: 15,),
                      Text("loi_jw",
                          style: TextStyle(
                              color: Color.fromRGBO(38, 38, 38, 1),
                              fontWeight: FontWeight.bold,
                              height: 0))
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 355,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Login'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(55, 151, 239, 1),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            //shape: RoundedRectangleBorder(borderRadius: 10)
                          )))
                ],
              ),
              const SizedBox(
                height: 36,
              ),
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("Switch Accounts",
                    style: TextStyle(
                        //decoration: TextDecoration.underline,
                        color: Color.fromRGBO(55, 151, 239, 1)))
              ]),
              const Spacer(
                flex: 3,
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.fromLTRB(0, 22, 0, 0),
                child: Divider(
                  color: Color.fromRGBO(60, 60, 67, 0.29),
                  height: 0,
                ),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: const TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: 'Don’t have an account?',
                          style:
                              TextStyle(color: Color.fromRGBO(0, 0, 0, 0.4))),
                      TextSpan(
                          text: " Sign Up.",
                          style: TextStyle(
                            color: Color.fromRGBO(38, 38, 38, 1),
                            fontWeight: FontWeight.bold,
                            // Add any other styles you want
                          ))
                    ]),
                  ),
                ],
              ),
              SizedBox(
                height: 55,
              )
            ]),
      ),
    );
  }
}
