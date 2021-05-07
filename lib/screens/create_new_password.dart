import 'package:flutter/material.dart';
import 'package:mrs_adeoti/screens/welcome_screen.dart';

class CreateNewPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Text(
                'You new password must be different from \n previously set password',
                textAlign: TextAlign.center,
              style: TextStyle(fontSize:18,color: Colors.black54),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0,8.0,16.0,8.0),
              child: Container(
                color: Colors.white54,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_open,
                      color: Colors.grey.withOpacity(1.0),
                    ),
                    hintText: '.........',
                    suffixIcon: Icon(
                      Icons.visibility_off,
                      color: Colors.grey.withOpacity(0.6),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0,8.0,16.0,8.0),
              child: Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_open,
                      color: Colors.grey.withOpacity(1.0),
                    ),
                    hintText: '.........',
                    suffixIcon: Icon(
                      Icons.visibility_off,
                      color: Colors.grey.withOpacity(0.6),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
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
                          builder: (context) => WelcomeScreen()));
                },
                child: Text(
                  'VERIFY',
                  style: TextStyle(
                    color: Colors.white.withOpacity(.7),
                    fontSize: 16,
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
