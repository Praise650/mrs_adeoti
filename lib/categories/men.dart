import 'package:flutter/material.dart';

class MenCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView(children: [],),
          ListTile(
            leading: Image.asset('images/abc.jpg',fit: BoxFit.cover,),
            title: Text('Ada'),
          ),
          ListTile(
            leading: Image.asset('images/def.jpg',fit: BoxFit.cover,),
            title: Text('Keyboard'),
          ),
          ListTile(
            leading: Image.asset('images/ghi.jpg',fit: BoxFit.cover,),
            title: Text('Horses'),
          ),
          ListTile(
            leading: Image.asset('images/jkl.jpg',fit: BoxFit.cover,),
            title: Text('Bisi'),
          ),
          ListTile(
            leading: Image.asset('images/abc.jpg',fit: BoxFit.cover,),
            title: Text('Bola'),
          ),
        ],
      ),
    );
  }
}
