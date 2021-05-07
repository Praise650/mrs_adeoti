import 'package:flutter/material.dart';
import 'package:mrs_adeoti/screens/create_new_password.dart';

class ForgotPassword extends StatelessWidget {
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
                color: Colors.blue,
                fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(height:MediaQuery.of(context).size.height * 1 / 10,),
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
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.8),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(18),
                ),
                width: MediaQuery.of(context).size.width * 2.7 / 4,
                // color: Colors.grey,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'example@gmail.com',
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
                  color: Colors.blue,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => VerifyEmail()));
                  },
                  child: Text(
                    'Reset Password',
                    style: TextStyle(color: Colors.white),
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

class VerifyEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 60,
              alignment: Alignment.bottomCenter,
              child: Text('Verify Email',style: TextStyle(
                fontSize:22,
                color: Colors.blue,
                fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(height:MediaQuery.of(context).size.height * 1 / 10,),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0,8.0,16.0,8.0),
              child: Text(
                'Please enter the 6-digit code sent to \n example@email.com',
                textAlign: TextAlign.center,
              style: TextStyle(fontSize:18,color: Colors.black54),
              ),
            ),
            Container(
              child: Row(
                children: [
                  // Container(
                  //   height: 20,
                  //   width: 20,
                  //   color: Colors.black,
                  //   decoration: BoxDecoration(
                  //     shape: BoxShape.circle,
                  //   ),
                  // ),
                  // Expanded(
                  //   child: Container(
                  //     color: Colors.yellow,
                  //     decoration: BoxDecoration(
                  //       shape: BoxShape.rectangle,
                  //     ),
                  //   ),
                  // ),
                  // Expanded(
                  //   child: Container(
                  //     color: Colors.green,
                  //     decoration: BoxDecoration(
                  //       shape: BoxShape.rectangle,
                  //     ),
                  //   ),
                  // ),
                  // Expanded(
                  //   child: Container(
                  //     color: Colors.blue,
                  //     decoration: BoxDecoration(
                  //       color: Colors.red,
                  //       shape: BoxShape.rectangle,
                  //     ),
                  //   ),
                  // ),
                  // Expanded(
                  //   child: Container(
                  //     color: Colors.red,
                  //     decoration: BoxDecoration(
                  //       shape: BoxShape.rectangle,
                  //     ),
                  //   ),
                  // ),
                  // Expanded(
                  //   child: Container(
                  //     color: Colors.red,
                  //     decoration: BoxDecoration(
                  //       shape: BoxShape.rectangle,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Resend Code',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 2 / 4,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(18)),
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateNewPassword()));
                },
                child: Text(
                  'VERIFY',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
