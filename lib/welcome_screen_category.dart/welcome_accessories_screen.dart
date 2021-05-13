import 'package:flutter/material.dart';
import 'product_details.dart';

class ShowWelcomeAccessoriesCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12.0,8.0,12.0,0.0),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset('images/xyz.jpg',fit: BoxFit.cover,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12.0,0.0,12.0,0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Just arrivals'),
                TextButton(onPressed: (){}, child: Text('Show All',style:TextStyle(
                  color: Colors.blue,
                ),),),
              ],
            ),),
          Expanded(child: _WelcomeAccessoriesCategory(),),
        ],
      ),
    );
  }
}

class _WelcomeAccessoriesCategory extends StatelessWidget {
  var productList = [
    {
      "name": "Blue Cufflinks",
      "picture": "images/abc.jpg",
      "price": 3500,
    },
    {
      "name": "Vintage Shirt",
      "picture": "images/def.jpg",
      "price": 70,
    },
    {
      "name": "Tie",
      "picture": "images/ghi.jpg",
      "price": 85,
    },
    {
      "name": "Diamond Ring",
      "picture": "images/jkl.jpg",
      "price": 872,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return _SingleProd(
            prodName: productList[index]['name'],
            prodPicture: productList[index]['picture'],
            prodPrice: productList[index]['price'],
          );
        });
  }
}

class _SingleProd extends StatelessWidget {
  final prodName;
  final prodPicture;
  final prodPrice;
  _SingleProd({
    this.prodName,
    this.prodPicture,
    this.prodPrice,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0.0,8.0,8.0),
      child: Card(
        child: Hero(
            tag: Text('hero 1'),
            child: Material(
              child: InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Details(
                          name: prodName,
                          price: prodPrice,
                          picture: prodPicture,
                        ))),
                child: GridTile(
                    footer: Container(
                      color: Colors.white70,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              prodName,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                          ),
                          Text(
                            "\$$prodPrice",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                    child: Image.asset(
                      prodPicture,
                      fit: BoxFit.cover,
                    )),
              ),
            )),
      ),
    );
  }
}
