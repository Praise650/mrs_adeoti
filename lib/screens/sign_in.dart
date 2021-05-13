import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mrs_adeoti/screens/forget_password.dart';
import 'package:mrs_adeoti/screens/sign_up.dart';
import 'package:mrs_adeoti/screens/welcome_screen.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  String nameController;
  String emailController;
  String passwordController;
  bool valuefirst = false;
  bool _isHidden = true;
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                  left: 138,
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

            //-----------------Text field Begins here------------------------
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 65.0, 20.0, 10.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 34,
                  ),
                ),
              ),
            ),
            // End of Text Field
            SizedBox(
              height: 20,
            ),
            //-----------------Text Input field Begins here------------------------
            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 8.0, 25.0, 0.0),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  child: Form(
                    key: _globalKey,
                    child: Column(
                      children: [
                        TextFormField(
                          maxLines: 1,
                          keyboardType: TextInputType.name,
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
                          height: 12,
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
                            if(value.isEmpty || !value.contains('@') || !value.contains('.')){
                              return '*Enter a valid email';
                            }
                            return null;
                            },
                            onSaved: (String value){
                              emailController = value;
                            },
                        ),
                        SizedBox(
                          height: 14,
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
                      ],
                    ),
                  ),
                ),
              ),
            ),
            //-----------------Text Input field Ends here------------------------
            //-----------------SignIn Button field Begins here------------------------
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
            //-----------------SignIn Button field Ends here------------------------
            SizedBox(
              height: 20,
            ),
            // Sign In Botton
            TextButton(
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
                  'Sign In',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            // End of Sign In Button
             SizedBox(
              height: 20,
            ),
            // Rich Text Field
            Padding(
              padding: const EdgeInsets.only(left:12.0,right: 12.0,),
              child: Align(
                alignment: Alignment.bottomCenter,
                              child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "Don't have an account?",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' Sign Up',
                              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SignUpScreen()));
                },
                              style: TextStyle(
                color: Colors.blueAccent,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Forgot Password Botton
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
    );
  }
}
