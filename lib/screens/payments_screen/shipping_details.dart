import 'package:flutter/material.dart';
import 'package:mrs_adeoti/screens/payments_screen/offer_recieve_screen.dart';

class Shipping extends StatelessWidget {
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();
  final _countryController = TextEditingController();
  final _shippingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left:18.0,right:18.0,),
                child: Column(
          children: [
            Container(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_outlined,
                  ),
                  onPressed: () {Navigator.pop(context);},
                ),
            ),
            // Header
            Container(
                  padding: EdgeInsets.only(
                    top: 2.0,
                    bottom: 20.0,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Shipping',
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  )),
                  //TextField Space
                  Container(
                  padding: EdgeInsets.only(
                    top: 15.0,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )),
            TextFormField(
              controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Your Email ',
                ),
            ),
            Container(
                  padding: EdgeInsets.only(
                     top: 15.0,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Phone Number',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )),
            TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(
                  hintText: 'Phone number ',
                ),
            ),
            Container(
                  padding: EdgeInsets.only(
                    top: 15.0,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Address',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )),
            TextFormField(
                controller: _addressController,
                decoration: InputDecoration(
                  hintText: 'Address',
                ),
            ),
            Container(
                  padding: EdgeInsets.only(
                     top: 15.0,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Country',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )),
            TextFormField(
                controller: _countryController,
                decoration: InputDecoration(
                  hintText: 'Country',
                ),
            ),
            Container(
                  padding: EdgeInsets.only(
                     top: 15.0,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Shipping Method',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )),
            TextFormField(
                controller: _shippingController,
                decoration: InputDecoration(
                    hintText: 'How do you want your goods shipped'),
            ),
            Container(
                padding: EdgeInsets.only(
                  top: 10.0,
                  bottom: 20.0,
                ),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Order take 3 - 5 working days for delivery',
                ),
            ),
            // end of TextField space
            SizedBox(height: 50,),
            // Confirm Button
            Container(
                alignment: Alignment.bottomCenter,
                width: MediaQuery.of(context).size.width * 2.7 / 8,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => TakeOrder()));
                  },
                  child: Text(
                    'Confirm',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
            ),
          ],
        ),
              ),
      ),
    );
  }
}
