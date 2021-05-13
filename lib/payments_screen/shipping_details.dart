import 'package:flutter/material.dart';
import 'offer_recieved_screen.dart';

// ignore: must_be_immutable
class Shipping extends StatelessWidget {
  String emailController;
  String phoneController;
  String countryController;
  String addressController;
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 18.0,
              right: 18.0,
            ),
            child: Form(
              key: _globalKey,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_outlined,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  // Header
                  Container(
                      padding: EdgeInsets.only(
                        top: 2.0,
                        bottom: 18.0,
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
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(fontSize: 20),
                        hintText: 'Your Email ',
                      ),
                      validator: (String value) {
                        if (value.isEmpty ||
                            !value.contains('@') ||
                            !value.contains('.com')) {
                          return '*Enter a valid email';
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        emailController = value;
                      },
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(
                      top: 15.0,
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: 'Phone number',
                        labelStyle: TextStyle(fontSize: 20),
                        hintText: 'Phone number ',
                      ),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return '*Phone number is Required';
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        phoneController = value;
                      },
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(
                      top: 15.0,
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.streetAddress,
                      decoration: InputDecoration(
                        labelText: 'Address',
                        labelStyle: TextStyle(fontSize: 20),
                        hintText: 'Address',
                      ),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return '*Adress is Required';
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        addressController = value;
                      },
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(
                      top: 15.0,
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Country',
                        labelStyle: TextStyle(fontSize: 20),
                        hintText: 'Country',
                      ),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return '*Country is Required';
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        countryController = value;
                      },
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
                          color: Colors.black87,
                        ),
                      )),
                  TextFormField(
                    keyboardType: TextInputType.text,
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
                  SizedBox(
                    height: 50,
                  ),
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
                        // validates form details
                        if (!_globalKey.currentState.validate()) {
                          return;
                        }
                        _globalKey.currentState.save();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TakeOrder()));
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
        ),
      ),
    );
  }
}
