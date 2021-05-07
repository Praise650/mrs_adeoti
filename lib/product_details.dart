import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  var add;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 500,
              width: MediaQuery.of(context).size.width * 1 / 5,
              child: Image.asset(
                widget.picture,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Row(
                children: [
                  Text('Quantity:'),
                  IconButton(
                    icon: Icon(
                      Icons.horizontal_rule,
                    ),
                    onPressed: () {
                      setState(() {
                        add = 1;
                        add--;
                      });
                    },
                  ),
                  Text('$add'),
                  IconButton(
                    icon: Icon(
                      Icons.horizontal_rule,
                    ),
                    onPressed: () {
                      setState(() {
                        add = 1;
                        add++;
                      });
                    },
                  ),
                ],
              ),
            ),

            // Description Tab
            Text(
              'Dotfashion short sleeve unisex top',
            ),
            Text('${widget.price}'),
            // Button Widget
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // border: BorderSide(
                    //   style: BorderStyle.solid,
                    //   width: 1.0,
                    //   color: Colors.black54,
                    // ),
                    height: 45,
                    width: MediaQuery.of(context).size.width * 1 / 4,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                      onPressed: () {},
                      child: Text('ADD TO CART'),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width * 1 / 4,
                    decoration: BoxDecoration(
                        // border: BoxBorder(
                        //   // style: BorderStyle.solid,
                        //   // width: 1.0,
                        //   // color: Colors.black54,
                        // ),
                        shape: BoxShape.rectangle,
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                      onPressed: () {},
                      child: Text('Buy Now'),
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
