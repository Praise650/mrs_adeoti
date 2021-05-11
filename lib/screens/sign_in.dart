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
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController paswordController = TextEditingController();
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
                      left:142,
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
    
                // Text Input Field
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
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 8.0, 25.0, 0.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      child: Column(
                        children: [
                          TextFormField(
                            controller: nameController,
                            decoration: InputDecoration(
                              hintText: 'Enter name',
                              hintStyle: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                              hintText: 'Email \t \t \t example@email.com',
                              hintStyle: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          TextFormField(
                            obscureText: _isHidden,
                            controller: paswordController,
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
                    onChanged: (bool value){
                    setState((){
                      this.valuefirst =value;
                    });
                  }),
                  Text('Remember Password'),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // Sign In Botton
            TextButton(
              onPressed: () {
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
            
            // Rich Text Field 
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 18.0, 8.0, 0.0),
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
          ],
        ),
      ),
    );
  }
}
