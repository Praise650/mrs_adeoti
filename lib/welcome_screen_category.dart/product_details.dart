import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mrs_adeoti/payments_screen/payment_method.dart';
import 'package:mrs_adeoti/screens/cart.dart';

class Details extends StatefulWidget {
  final name;
  var picture;
  var price;
  Details({
    this.name,
    this.picture,
    this.price,
  });

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  var add = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 450,
                  width: MediaQuery.of(context).size.width * 5 / 5,
                  child: Image.asset(
                    widget.picture,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.search,
                        ),
                        onPressed: null),
                    IconButton(
                        icon: Icon(
                          Icons.shopping_cart_outlined,
                        ),
                        onPressed: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyCart(
                              name:widget.name,
                              image: widget.picture,
                            )))),
                  ],
                )
              ],
            ),

            Padding(
              padding:
                  const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 6.0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 12.0, top: 8.0, bottom: 4.0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Dotfashion short sleeve unisex top',
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 12.0, bottom: 6.0),
                alignment: Alignment.centerLeft,
                child: Text('\$${widget.price*add}'),
              ),
              Container(
                padding: const EdgeInsets.only(left: 12.0,),
                alignment: Alignment.centerLeft,
                child: Text('Size',style: TextStyle(fontSize:20,color: Colors.black.withOpacity(.6)),),
              ),
              Container(
                padding: const EdgeInsets.only(left: 6.0,),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('S'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('M'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('L'),
                  ),
                ],),
              ),
              Container(
                padding: EdgeInsets.only(left:12),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text('Quantity',style: TextStyle(fontSize:20,color: Colors.black.withOpacity(.6)),),
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
                    Text('$add',style: TextStyle(fontSize:20,),),
                    IconButton(
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
                  ],
                ),
              ),
                ],
              ),
            ),
            // Description Tab

            // Button Widget
            Padding(
              padding:
                  const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 28.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 35,
                    width: MediaQuery.of(context).size.width * 1.1 / 4,
                    child:OutlineButton(
                      shape: StadiumBorder(),
                    child: Text('ADD TO CART'),
                    onPressed: (){
                      Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyCart(
                              name:widget.name,
                              image: widget.picture,
                            )));
                    },
                    borderSide: BorderSide(color: Colors.lightBlue,),
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 35,
                      width: MediaQuery.of(context).size.width * 1 / 4,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(30)),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentMethods()));
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
      ),
    );
  }
}
