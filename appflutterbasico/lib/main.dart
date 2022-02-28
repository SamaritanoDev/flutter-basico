import 'package:flutter/material.dart';

import 'package:appflutterbasico/screens/list_view2_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 241, 59, 171),
      ),
      home: const ListView2Screen()
    );
  }
}