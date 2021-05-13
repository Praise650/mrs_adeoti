import 'package:flutter/material.dart';
import 'package:mrs_adeoti/payments_screen/shipping_details.dart';


class CardNumber extends StatefulWidget {
  @override
  _CardNumberState createState() => _CardNumberState();
}

class _CardNumberState extends State<CardNumber> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  String numberController;
  String nameController;
  String dateController;
  String cvvController;
  var select1;
 

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          body: SingleChildScrollView(
                      child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  20.0,
                  50.0,
                  20.0,
                  0.0,
                ),
                child: Form(
                  key: _globalKey,
                                child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.only(
                            top: 5.0,
                            bottom: 5.0,
                          ),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Card Number',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )),
                      TextFormField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          prefixIcon: Image.asset(
                            'images/paypallogo.png',
                            height: 10,
                            width: 10,
                          ),
                          suffixIcon: Icon(Icons.camera_alt_outlined),
                        ),
                        validator: (String value){ 
                              if(value.isEmpty){
                                return '*Card number is Required';
                              }
                              return null;
                              },
                              onSaved: (String value){
                                numberController = value;
                              },
                      ),
                      Container(
                          padding: EdgeInsets.only(
                            top: 5.0,
                            bottom: 5.0,
                          ),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Expiry Date',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 90,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: Colors.black,
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('MM'),
                                IconButton(
                                    icon: Icon(Icons.arrow_drop_up_rounded),
                                    onPressed: () {})
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            width: 90,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Colors.black,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('YYYY'),
                                IconButton(
                                    icon: Icon(Icons.arrow_drop_up_rounded),
                                    onPressed: () {}),
                              ],
                            ),
                          ),
                        ],
                      ),
                      TextFormField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.datetime,
                        validator: (String value){ 
                              if(value.isEmpty){
                                return '*what\'s card expiry date';
                              }
                              return null;
                              },
                              onSaved: (String value){
                                dateController = value;
                              },
                      ),
                      Container(
                          padding: EdgeInsets.only(
                            top: 10.0,
                            bottom: 3.0,
                          ),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Name on Card',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )),
                      TextFormField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.name,
                        validator: (String value){ 
                              if(value.isEmpty){
                                return '*what\'s name on the card';
                              }
                              return null;
                              },
                              onSaved: (String value){
                                nameController = value;
                              },
                      ),
                      Container(
                          padding: EdgeInsets.only(
                            top: 10.0,
                            bottom: 3.0,
                          ),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'CVV',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )),
                      TextFormField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: 'Enter digit number on the back of the card'),
                            validator: (String value){ 
                              if(value.isEmpty){
                                return '*Enter the card\'s cvv number';
                              }
                              return null;
                              },
                              onSaved: (String value){
                                cvvController = value;
                              },
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: 10.0,
                          bottom: 3.0,
                        ),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Radio(value: 0, groupValue: select1, onChanged: (val){
                          setState(() {
                          select1 = val;});
                        }),
                        Text('Make this my default payment'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 2 / 4,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                      onPressed: () {
                        // validates form details
                    if(!_globalKey.currentState.validate()){
                      return;
                    }
                    _globalKey.currentState.save();
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Shipping()));
                      },
                      child: Text('SAVE THIS CARD',
                          style: TextStyle(
                            color: Colors.white,
                          )),
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
