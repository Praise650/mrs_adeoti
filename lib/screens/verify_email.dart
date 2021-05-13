import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'create_new_password.dart';

class VerifyEmail extends StatelessWidget {
  final email;
  VerifyEmail(this.email);
  final otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 60,
              alignment: Alignment.bottomCenter,
              child: Text(
                'Verify Email',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 1.3 / 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
              child: Column(
                children: [
                  Text(
                    'Please enter the 6-digit code sent to',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                  Text(
                    '${email.toString()}',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.blueAccent),
                  ),
                ],
              ),
            ),
            PinCodeTextField(
              defaultBorderColor: Colors.white,
              pinBoxRadius: 10,
              pinBoxColor: Colors.grey.withOpacity(.4),
              controller: otpController,
              maxLength: 6,
              hideCharacter: false,
              hasTextBorderColor: Colors.grey.withOpacity(.2),
              highlightPinBoxColor: Colors.grey.withOpacity(.3),
              pinBoxBorderWidth: 0.0,
              keyboardType: TextInputType.number,
              textDirection: TextDirection.ltr,
              pinBoxHeight: 45,
              pinBoxWidth: 45,
            ),

            SizedBox(height: 20,),
            
            TextButton(
              onPressed: () {},
              child: Text(
                'Resend Code',
                style: TextStyle(
                  color: Colors.blueAccent,
                  decoration: TextDecoration.underline,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width * 2 / 4,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(18)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateNewPassword()));
                },
                child: Text(
                  'verify'.toUpperCase(),
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
