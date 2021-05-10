import 'package:flutter/material.dart';
import 'package:shopastiq/modules/auth_service.dart';
import '../const.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String email = '';
  String password = '';
  final _formKey = GlobalKey<FormState>();
  String error = '';
  bool loading = false;
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image(
                image: AssetImage('asset/splash_logo.png'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Register Now !',
                style: TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20.0),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: textInputDecoration.copyWith(
                            hintText: 'Enter Your Email'),
                        validator: (val) =>
                            val.isEmpty ? 'Enter an email' : null,
                        onChanged: (val) {
                          setState(() => email = val);
                        },
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: textInputDecoration.copyWith(
                            hintText: 'Enter Your Password'),
                        obscureText: true,
                        validator: (val) => val.length < 6
                            ? 'Enter a password 6+ chars long'
                            : null,
                        onChanged: (val) {
                          setState(() => password = val);
                        },
                      ),
                    ),
                    SizedBox(height: 20.0),
                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.lightBlue),
                        ),
                        child: Text(
                          'Register',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            Navigator.pop(context);
                            setState(() => loading = true);
                            dynamic result = await _auth
                                .registerWithEmailAndPassword(email, password);
                            Navigator.pop(context);
                            if (result == null) {
                              setState(() {
                                loading = false;
                                error = 'Please supply a valid email';
                              });
                            }
                          }
                        }),
                    SizedBox(height: 12.0),
                    Text(
                      error,
                      style: TextStyle(color: Colors.red, fontSize: 14.0),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.redAccent),
                      ),
                      child: Text('I Already have an account !'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
