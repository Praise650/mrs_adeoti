import 'package:flutter/material.dart';
import 'package:mrs_adeoti/screens/payments_screen/shipping_details.dart';

 enum platformType{
    paypal, visa, mastercard
  }


class CardNumber extends StatefulWidget {
  @override
  _CardNumberState createState() => _CardNumberState();
}

class _CardNumberState extends State<CardNumber> {
  final nameController = TextEditingController();
  final dateController = TextEditingController();
  final cvvController = TextEditingController();
  var select1;
 

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                20.0,
                50.0,
                20.0,
                0.0,
              ),
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
                    decoration: InputDecoration(
                      prefixIcon: Image.asset(
                        'images/paypallogo.png',
                        height: 10,
                        width: 10,
                      ),
                      suffixIcon: Icon(Icons.camera_alt_outlined),
                    ),
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
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.0),
                        alignment: Alignment.center,
                        width: 90,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Colors.black,
                            )),
                        child: Row(
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
                    controller: nameController,
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
                    controller: nameController,
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
                    controller: cvvController,
                    decoration: InputDecoration(
                        hintText: 'Enter digit number on the back of the card'),
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
    );
  }
}
