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
  var pass;
  String nameController;
  String emailController;
  String passwordController;
  String confirmPasswordController;
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
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
                      height: 400,
                      width: MediaQuery.of(context).size.width * 5 / 5,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 130,
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
                margin: const EdgeInsets.fromLTRB(20.0, 60.0, 20.0, 8.0),
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
       //-----------------Text Input field Begins here------------------------
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 8.0, 25.0, 0.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Form(
                    key: _globalKey,
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.name,
                          maxLines: 1,
                          decoration: InputDecoration(
                            hintText: 'Enter name',
                            hintStyle: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          validator: (String value){ 
                            if(value.isEmpty){
                              return '*Name is Required';
                            }
                            return null;
                            },
                            onSaved: (String value){
                              nameController = value;
                            },
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          maxLines: 1,
                          decoration: InputDecoration(
                            hintText: 'Email \t \t \t example@email.com',
                            hintStyle: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          validator: (String value){ 
                            if(value.isEmpty || !value.contains('@') || !value.contains('.com')){
                              return '*Enter a valid email';
                            }
                            return null;
                            },
                            onSaved: (String value){
                              emailController = value;
                            },
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          maxLines: 1,
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
                          validator: (String value){ 
                            pass = value;
                            if(value.isEmpty || value == null){return '*Password is Required';
                            } else { 
                              if((value.length <= 2)){return '*Password should be atleast 3 characters';
                              } else {
                                if((value.length >= 10)){return '*Password shold not be more than 9 characters long';
                                }}}
                                
                            return null; 
                            },
                            onSaved: (String value){
                              passwordController = value;
                            }
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          maxLines: 1,
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
                          validator: (String value){ 
                            if(value.isEmpty || (value != pass)){
                              return '*Password does not match';
                            } 
                            return null; 
                            },
                            onSaved: (String value){
                              confirmPasswordController = value;
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //-----------------Text Input field Ends here------------------------
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
                height: 8,
              ),
              Container(
                alignment: Alignment.center,
                    height: 40,
                    width: MediaQuery.of(context).size.width * 1.6 / 4,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30),
                    ),
                child: TextButton(
                  onPressed: () {
                  // validates form details
                  if(!_globalKey.currentState.validate()){
                    return;
                  }
                  _globalKey.currentState.save();
                  //Navigates to main screen  which is th  welcome screen
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => WelcomeScreen()));
                },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
               SizedBox(
              height: 20,
            ),
              Padding(
                padding: const EdgeInsets.only(left:12.0,right: 12.0,),
                child: Align(
                  alignment: Alignment.bottomCenter,
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
                                  ..onTap = ()  {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
