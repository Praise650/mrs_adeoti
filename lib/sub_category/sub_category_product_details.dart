import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mrs_adeoti/payments_screen/payment_method.dart';
import 'package:mrs_adeoti/screens/cart.dart';

class CategoryDetails extends StatefulWidget {
  final name;
  final picture;
  final price;
  final color;
  final size;
  CategoryDetails({this.name, this.picture, this.price, this.color, this.size});

  @override
  _CategoryDetailsState createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  var add = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {},
            padding: EdgeInsets.all(8.0),
            icon: Icon(
              Icons.search_sharp,
            ),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyCart(
                            name: widget.name,
                            image: widget.picture,
                            price: widget.price,
                          )));
            },
            padding: EdgeInsets.all(8.0),
            icon: Icon(
              Icons.shopping_cart_outlined,
            ),
            color: Colors.white,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(28),
                        topRight: Radius.circular(28),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Women',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            widget.name,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Price',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  '${widget.price * add}',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 90,
                            ),
                            Expanded(
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      shape: BoxShape.rectangle),
                                  child: Image.asset(
                                    widget.picture,
                                    fit: BoxFit.fitWidth,
                                    height: 150,
                                    width: 80,
                                  )),
                            ),
                          ],
                        ),
                        SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 8.0,
                                top: 8.0,
                                bottom: 6.0,
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(
                                      left: 12.0,
                                    ),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Color',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black.withOpacity(.6)),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 6.0, top: 6.0),
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                                color: Colors.blue,
                                                shape: BoxShape.circle),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                                color: Colors.amber,
                                                shape: BoxShape.circle),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, top: 20, bottom: 6.0, right: 120),
                              child: Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(
                                      left: 12.0,
                                    ),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Size',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black.withOpacity(.6)),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      left: 6.0,
                                    ),
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(widget.size.toString()),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        // Description Tab
                        Container(
                          padding: EdgeInsets.only(
                            left: 12,
                            right: 60,
                          ),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Quantity',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black.withOpacity(.6)),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    iconSize: 24,
                                    icon: Icon(
                                      Icons.horizontal_rule,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        if (add == 1) {
                                          return 1;
                                        } else {
                                          add--;
                                        }
                                      });
                                    },
                                  ),
                                  Text(
                                    '$add',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(color: Colors.grey,shape: BoxShape.circle),
                                    child: IconButton(
                                      iconSize: 24,
                                      icon: Icon(
                                        Icons.add,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          add++;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        // Button Widget
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 12.0, right: 12.0, bottom: 28.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 35,
                                width:
                                    MediaQuery.of(context).size.width * 1.1 / 4,
                                child: OutlineButton(
                                  shape: StadiumBorder(),
                                  child: Text('ADD TO CART'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MyCart(
                                                  name: widget.name,
                                                  image: widget.picture,
                                                )));
                                  },
                                  borderSide: BorderSide(
                                    color: Colors.lightBlue,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 35,
                                  width:
                                      MediaQuery.of(context).size.width * 1 / 4,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PaymentMethods()));
                                    },
                                    child: Text(
                                      'Buy Now',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
