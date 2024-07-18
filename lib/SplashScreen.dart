import 'dart:ui';

import 'package:flutter/material.dart';

import 'login.dart'; // Make sure this import is correct and the file exists

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((_) {
      _navigateToHome();
    // });
  }

  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 300));

    // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SplashScreen2()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('images/carvan.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
                child: Center(
                  child: Image.asset('images/logoFinal.jpeg'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


