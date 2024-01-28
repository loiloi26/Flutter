import 'package:flutter/material.dart';

class TextFormFieldExample1App extends StatelessWidget {
  const TextFormFieldExample1App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Text Form Field Demo'),
        ),
        backgroundColor: Colors.white,
        body: const SafeArea(
          child: TextFormFieldExample1(),
        ),
        resizeToAvoidBottomInset: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TextFormFieldExample1 extends StatefulWidget {
  const TextFormFieldExample1({Key? key}) : super(key: key);

  @override
  State<TextFormFieldExample1> createState() => _TextFormFieldExample1State();
}

class _TextFormFieldExample1State extends State<TextFormFieldExample1> {
  final _formKey = GlobalKey<FormState>();

  String? _username;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 128,
                  ),
                  Form(
                    key: _formKey,
                    onChanged: () {
                      debugPrint('Tên đăng nhập hoặc mật khẩu đã thay đổi');
                    },
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Tên đăng nhập không được để trống';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xFF262626),
                          ),
                          decoration: InputDecoration(
                            hintText: 'Tên đăng nhập',
                            hintStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.black.withOpacity(0.2)),
                            fillColor: const Color(0xFFFAFAFA),
                            filled: true,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                color: Color(0xFF3797EF),
                                width: 1,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: const Color(0xFF000000).withOpacity(0.1),
                                width: 1,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: const Color(0xFF000000).withOpacity(0.1),
                                width: 1,
                              ),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: const Color(0xFF000000).withOpacity(0.1),
                                width: 1,
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                color: Colors.redAccent,
                                width: 1,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                color: Color(0xFF3797EF),
                                width: 1,
                              ),
                            ),
                          ),
                          onChanged: (value) {
                            debugPrint('Tên đăng nhập - onChanged: $value');
                          },
                          onSaved: (value) {
                            _username = value;
                          },
                        ),
                        const SizedBox(
                          height: 16,
                        ),

                        
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Mật khẩu không được để trống';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          obscureText: true,
                          obscuringCharacter: '●',
                          decoration: InputDecoration(
                            hintText: 'Mật khẩu',
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.black.withOpacity(0.2),
                            ),
                            fillColor: const Color(0xFFFAFAFA),
                            filled: true,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: const Color(0xFF000000).withOpacity(0.1),
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                color: Color(0xFF3797EF),
                                width: 1,
                              ),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: const Color(0xFF000000).withOpacity(0.1),
                                width: 1,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: const Color(0xFF000000).withOpacity(0.1),
                                width: 1,
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                color: Colors.redAccent,
                                width: 1,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                color: Color(0xFF3797EF),
                                width: 1,
                              ),
                            ),
                          ),
                          onChanged: (value) {
                            debugPrint('Mật khẩu - onChanged: $value');
                          },
                          onSaved: (value) {
                            _password = value;
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  SizedBox(
                    height: 44,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          debugPrint('Tên đăng nhập - onSaved: $_username');
                          debugPrint('Mật khẩu - onSaved: $_password');
                          ScaffoldMessenger.of(context)
                              .showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Tên đăng nhập: $_username\nMật khẩu: $_password',
                                  ),
                                ),
                              )
                              .closed
                              .then(
                            (SnackBarClosedReason reason) {
                              _formKey.currentState!.reset();
                            },
                          );
                        }
                      },
                      child: const Text(
                        'Đăng nhập',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 64,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
