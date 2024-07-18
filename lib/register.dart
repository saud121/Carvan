import 'package:carvan/agreement.dart';
import 'package:flutter/material.dart';



class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  bool _passwordVisible = false;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Account'),
      ),
      body:
    // SingleChildScrollView(

        // child:
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Full name',
                  ),
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  obscureText: !_passwordVisible,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Date Of Birth',
                    hintText: 'DD / MM / YYYY',
                  ),
                ),
                SizedBox(height: 24.0),
                Text(
                  'By continuing, you agree to Terms of Use and Privacy Policy.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12.0),
                ),
                SizedBox(height: 24.0),
                ElevatedButton(
                  onPressed: () {
                    // if (_formKey.currentState!.validate()) {
                    //   // Process data.
                    // }
                    _navigateToagreementScreen(context);
                  },
                  child: Text('Sign Up'),
                ),
                SizedBox(height: 16.0),
                TextButton(
                  onPressed: () {
                    // Navigate to login page.
                  },
                  child: Text(
                    'already have an account? Log in',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                Image.asset('images/loginb.png')
        
              ],
            ),
          ),
        ),
      // ),
    );
  }
  _navigateToagreementScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => AgreementPage()));
  }
}