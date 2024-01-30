import 'package:flutter/material.dart';

class ButtonExample1App extends StatelessWidget {
  const ButtonExample1App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Button Demo'),
        ),
        backgroundColor: Colors.white,
        body: const SafeArea(
          child: ButtonExample1(),
        ),
        resizeToAvoidBottomInset: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ButtonExample1 extends StatefulWidget {
  const ButtonExample1({Key? key}) : super(key: key);

  @override
  State<ButtonExample1> createState() => _ButtonExample1State();
}

class _ButtonExample1State extends State<ButtonExample1> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                // Hành động khi nút được nhấn
              },
              onLongPress: () {
                // Hành động khi nút được nhấn và giữ trong một khoảng thời gian dài
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Màu nền của nút
                foregroundColor: Colors.white, // Màu chữ trên nút
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Hình dạng của nút
                ),
              ),
              child: const Text('Nhấn vào đây'),
            ),
            const SizedBox(
              height: 16,
            ),
            TextButton(
              onPressed: () {
                // Hành động khi nút được nhấn
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue, // Màu chữ trên nút
                textStyle: const TextStyle(
                  fontSize: 16, // Kích thước chữ
                  fontWeight: FontWeight.bold, // Độ đậm của chữ
                ),
              ),
              child: const Text('Nhấn vào đây'),
            ),
            const SizedBox(
              height: 16,
            ),
            OutlinedButton(
              onPressed: () {
                // Hành động khi nút được nhấn
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.blue, // Màu chữ trên nút
                side: const BorderSide(color: Colors.blue), // Đường viền của nút
              ),
              child: const Text('Nhấn vào đây'),
            ),
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                // Hành động khi người dùng chạm vào Widget
              },
              onDoubleTap: () {
                // Hành động khi người dùng nhấp đúp vào Widget
              },
              onLongPress: () {
                // Hành động khi người dùng nhấn giữ trên Widget
              },
              child: Container(
                width: 200,
                height: 200,
                color: Colors.green,
                child: const Center(
                  child: Text('Nhấn vào đây'),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Material(
              color: Colors.yellow,
              child: InkWell(
                onTap: () {
                  // Hành động khi người dùng chạm vào Widget
                },
                child: const SizedBox(
                  width: 200,
                  height: 200,
                  child: Center(
                    child: Text('Nhấn vào đây'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
