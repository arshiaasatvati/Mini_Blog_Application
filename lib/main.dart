import 'package:flutter/material.dart';
import 'package:mini_blog_application/screens/login2_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'vazir',
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen2(),
    );
  }
}
