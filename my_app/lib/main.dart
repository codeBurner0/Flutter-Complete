import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Center(
              child: Title(
                  color: Color.fromARGB(255, 220, 231, 236),
                  child: Text(
                    'One Piece',
                    style: TextStyle(fontSize: 29),
                  ))),
        ),
        body: Center(
          child: Image(
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxmMZDv5WLTqjiBl7P5Cr_a_lRbsO0lQ2v-A&usqp=CAU')),
        ),
      ),
    );
  }
}
