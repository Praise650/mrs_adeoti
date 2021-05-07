import 'package:flutter/material.dart';

class WomenCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: Image.asset('images/abc.jpg'),
            title: Text('Ada'),
          ),
          ListTile(
            leading: Image.asset('images/def.jpg'),
            title: Text('Keyboard'),
          ),
          ListTile(
            leading: Image.asset('images/ghi.jpg'),
            title: Text('Horses'),
          ),
          ListTile(
            leading: Image.asset('images/jkl.jpg'),
            title: Text('Bisi'),
          ),
          ListTile(
            leading: Image.asset('images/abc.jpg'),
            title: Text('Bola'),
          ),
        ],
      ),
    );
  }
}
