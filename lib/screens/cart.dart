import 'package:flutter/material.dart';
import 'package:mrs_adeoti/payments_screen/payment_method.dart';

class MyCart extends StatelessWidget {
  final name;
  final description;
  final image;
  final price;
  MyCart({
    this.name,
    this.description,
    this.image,
    this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height:20,),
            Container(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.arrow_back,size: 34,key: key,),
              ),
            ),
            SizedBox(height:20,),
            Container(
              margin: EdgeInsets.all(10.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'My Cart',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(height:40,),
            Padding(
              padding: const EdgeInsets.fromLTRB(18.0, 8.0, 18.0, 0.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  onTap: () {},
                  title: Text('$name'),
                  subtitle: Text('N3500'),
                  trailing: Image.asset(
                    image,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(18.0, 0.0, 18.0, 0.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  onTap: () {},
                  title: Text('$name'),
                  subtitle: Text('N3500'),
                  trailing: Image.asset(
                    image,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 2.7 / 8,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentMethods()));
                },
                child: Text(
                  'BUY NOW',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 2.7 / 8,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PaymentMethods()));
                },
                child: Text(
                  'Add Card',
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
    );
  }
}
