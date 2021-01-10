import './screen/login_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Odhyyon',
      theme: ThemeData(
        primaryColor:  const Color(0xff3FB39D),
        scaffoldBackgroundColor: const Color(0xff3FB39D)
      ),
      home: LoginScreen(),
    );
  }
}



