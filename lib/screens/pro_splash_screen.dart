import 'dart:convert';
import 'dart:io';
import 'package:api_progress_splash/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigateToHome();
    super.initState();
  }

  Future<void> navigateToHome() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: ((context) => HomeScreen())));
  }

 


  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // Icon(Icons.backpack),
          Text(
            "Splash Screen",
            style: TextStyle(color: Colors.white, fontSize: 50),
          ),
          // CircularProgressIndicator(),
        ]),
      ),
    );
  }
}
