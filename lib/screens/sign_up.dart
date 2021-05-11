import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mrs_adeoti/screens/sign_in.dart';
import 'package:mrs_adeoti/screens/welcome_screen.dart';

import 'forget_password.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController paswordController = TextEditingController();
  TextEditingController confirmPaswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool valuefirst = false;
  bool _isHidden = true;
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
  void _togglePasswordsView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                overflow: Overflow.visible,
                children: [
                  Align(
                    widthFactor: 1.5,
                    heightFactor: .5,
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 390,
                      width: MediaQuery.of(context).size.width * 5 / 5,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 120,
                    left: 130,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 60,
                        backgroundImage: AssetImage('images/abc.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20.0, 65.0, 20.0, 8.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 8.0, 25.0, 0.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Enter name',
                            hintStyle: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'Text is empty';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Email \t \t \t example@email.com',
                            hintStyle: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'Text is empty';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          obscureText: _isHidden,
                          decoration: InputDecoration(
                            hintText: 'Password \t \t  1234567890',
                            hintStyle: TextStyle(
                              fontSize: 14,
                            ),
                            suffix: InkWell(
                                onTap: _togglePasswordView,
                                child: Icon(
                                  _isHidden 
                                  ? Icons.visibility_off 
                                  : Icons.visibility,
                                  color: Colors.grey.withOpacity(0.6),
                              ),
                          ),
                          ),
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'Text is empty';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          obscureText: _isHidden,
                          decoration: InputDecoration(
                            hintText: 'Confirm Password \t \t  1234567890',
                            hintStyle: TextStyle(
                              fontSize: 14,
                            ),
                            suffix: InkWell(
                                onTap: _togglePasswordsView,
                                child: Icon(
                                  _isHidden 
                                  ? Icons.visibility_off 
                                  : Icons.visibility,
                                  color: Colors.grey.withOpacity(0.6),
                              ),
                          ),
                          ),
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'Text is empty';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(18.5, 0.0, 0.0, 2.0),
                child: Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.blueAccent,
                        activeColor: Colors.white,
                        value: this.valuefirst,
                        onChanged: (bool value) {
                          setState(() {
                            this.valuefirst = value;
                          });
                        }),
                    Text('Remember Password'),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => WelcomeScreen())),
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: MediaQuery.of(context).size.width * 1.6 / 4,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 6.0, 8.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Already have an account?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Sign In',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async{
                                 if (_formKey.currentState.validate()) {
                                  // TODO submit
                                }
                                await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignInScreen()));
                              },
                            style: TextStyle(
                              color: Colors.blueAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotPassword()));
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
