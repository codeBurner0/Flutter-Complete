import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Title(
                  color: Color.fromARGB(255, 242, 10, 10),
                  child: Text(
                    'Hello World',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  )),
            ),
            body: Center(
              child: Text(
                "Hello",
                style: TextStyle(fontSize: 50, color: Colors.red[600]),
              ),
            )));
  }
}
