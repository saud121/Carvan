import 'dart:ui';

// import 'package:carvan/login1.dart';
import 'package:carvan/register.dart';
import 'package:flutter/material.dart';

import 'loginPage.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    super.initState();
    // _navigateToHome();
  }

  _navigateToHome() async {
    // await Future.delayed(Duration(milliseconds: 300000), () {});
    // Navigator.pushReplacementNamed(context, '/home');
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage('images/carvan.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
                  child: Center(
                      child: Image.asset('images/logoFinal.png')
                  ),
                ),
                Text("Welcome",style: TextStyle(color: Colors.orange,fontSize:40)),
                Text("lorem epsum"),
                SizedBox(height: 20,),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xff1B43C1)),
                    ),
                  onPressed: _navigateToNextScreen(context), child: Text("Login",style: TextStyle(fontSize:40,color: Colors.white)),),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Loginpage()));
  }

}
