import 'package:flutter/material.dart';
import 'package:mrs_adeoti/screens/sign_in.dart';

class TakeOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Image Space
          Container(
            height: 350,
            width: MediaQuery.of(context).size.width,
            child:Image.asset('images/xyz.jpg',fit: BoxFit.cover,),
          ),
          // End of Image Space
          SizedBox(height: 50,),
          Text('Order received',textAlign: TextAlign.center,style: TextStyle(fontSize: 38,color: Colors.black.withOpacity(.6)),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Delivery takes 3 - 5 working days',
              textAlign: TextAlign.center,
              style: TextStyle(color:Colors.black.withOpacity(.6)),
            ),
          ),
          SizedBox(height: 50,),
          // Log Out  Button
            Center(
              child: Container(
                  alignment: Alignment.bottomCenter,
                  width: MediaQuery.of(context).size.width * 3.8 / 8,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => SignInScreen()));
                    },
                    child: Text(
                      'Log Out',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
              ),
            ),
        ],
      ),
    );
  }
}
