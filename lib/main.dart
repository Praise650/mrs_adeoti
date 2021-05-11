import 'package:flutter/material.dart';
import 'package:mrs_adeoti/screens/sign_in.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Madam Adeoti',
      home: SignInScreen(),
    );
  }
}