import 'package:flutter/material.dart';
import 'package:mrs_adeoti/screens/verify_email.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  String emailController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 60,
              alignment: Alignment.bottomCenter,
              child: Text('Forgot Password',style: TextStyle(
                fontSize:22,
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(height:MediaQuery.of(context).size.height * 1.3 / 10,),
            Container(
              child:Column(
                children:[
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Text(
              'Enter the email address associated with this \n account for  verification.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize:18,color: Colors.black54),
            ),
                  ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0,8.0,16.0,8.0),
              child: Form(
                key: _globalKey,
                              child: Container(
                  width: MediaQuery.of(context).size.width * 2.7 / 4,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                          maxLines: 1,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.20),
                      hintText: 'example@gmail.com',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.0,
                          style: BorderStyle.none),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(width: 0.0,
                        style: BorderStyle.none,),
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
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0,8.0,16.0,8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3 / 4,
                width: MediaQuery.of(context).size.width * 2.7 / 4,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                  onPressed: () {
                    // validates form details
                if(!_globalKey.currentState.validate()){
                  return;
                }
                _globalKey.currentState.save();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => VerifyEmail(emailController)));
                  },
                  child: Text(
                    'Reset Password'.toUpperCase(),
                    style: TextStyle(color: Colors.white, letterSpacing: 1,),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}

