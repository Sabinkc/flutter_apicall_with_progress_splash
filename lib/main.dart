import 'package:api_progress_splash/screens/home_screen.dart';
import 'package:api_progress_splash/screens/pro_splash_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}


