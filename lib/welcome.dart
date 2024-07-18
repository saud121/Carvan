import 'package:carvan/subcribtion.dart';
import 'package:flutter/material.dart';

class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
                child: Center(
                    child: Image.asset('images/logoFinal.png',height: 200,)
                ),
        
        
              ),
              Image.asset('images/allset.png'),
              SizedBox(height: 20,),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xff1B43C1)),
                ),
                onPressed: () => _navigateToNextScreen(context), // Wrap in an anonymous function
                child: Text("Proceed", style: TextStyle(fontSize: 40, color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SubscriptionScreen()));
  }
}
