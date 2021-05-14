import 'package:flutter/material.dart';
import 'add_card_details.dart';

class PaymentMethods extends StatefulWidget {
  @override
  _PaymentMethodsState createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  String payment='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 30),
              child: Text(
                'Payment Methods',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.1),
                borderRadius: BorderRadius.circular(30),
                shape: BoxShape.rectangle,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'images/paypallogo.png',
                    height: 80,
                    width: 80,
                  ),
                  Radio(value: 'paypal', groupValue: payment, onChanged: (val)async{
                    setState(() {
                          payment = val;
                        });
                        await Navigator.push(context, MaterialPageRoute(builder: (context)=>CardNumber()));
                  })
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.1),
                borderRadius: BorderRadius.circular(30),
                shape: BoxShape.rectangle,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'images/visa_PNG30.png',
                    height: 80,
                    width: 80,
                  ),
                  Radio(value: 'visa', groupValue: payment, onChanged: (val)async{
                    setState(() {
                          payment = val;
                        });
                        await Navigator.push(context, MaterialPageRoute(builder: (context)=>CardNumber()));
                  })
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.1),
                  borderRadius: BorderRadius.circular(30),
                  shape: BoxShape.rectangle,
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'images/mastercardlogo.png',
                        height: 80,
                        width: 80,
                      ),
                      Radio(value: 'masterCard', groupValue: payment, onChanged: (val)async {
                        setState(() {
                          payment = val;
                        });
                        await Navigator.push(context, MaterialPageRoute(builder: (context)=>CardNumber()));
                      })
                    ],
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
