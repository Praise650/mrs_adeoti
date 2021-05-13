import 'package:flutter/material.dart';
import 'package:mrs_adeoti/sub_category/sub_category_product_details.dart';

class WomenSubCategory extends StatefulWidget {
  @override
  _WomenSubCategoryState createState() => _WomenSubCategoryState();
}

class _WomenSubCategoryState extends State<WomenSubCategory>with SingleTickerProviderStateMixin {
  TabController tabController;
  String someText = "Some text";
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
    someText = "Some other text changed";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          color:Colors.black54,
          icon: Icon(Icons.arrow_back_outlined),
          onPressed:(){Navigator.pop(context);},
        ),
        title: Center(child: Text('Women',style: TextStyle(color:Colors.black45),)),
        actions: [
          IconButton(
             onPressed: (){},
            padding: EdgeInsets.all(8.0),
            icon:Icon(Icons.search_sharp,),
          color:Colors.black,),
          IconButton(
            onPressed: (){},
            padding: EdgeInsets.all(8.0),
            icon:Icon(Icons.shopping_cart_outlined,),
          color:Colors.black ,),
        ],
        bottom: TabBar(
          labelColor: Colors.blueAccent,
          unselectedLabelColor: Colors.black45,
          indicatorColor:  Colors.black.withOpacity(.30),
          controller: tabController,
          tabs: [
          Text('Clothing'),
          Text('Bags'),
          Text('Accessories'),
          Text('Shoes'),
        ]),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          DisplayComponent(),
          DisplayComponent(),
          DisplayComponent(),
          DisplayComponent(),
        ],
      ),
    );
  }
}

class DisplayComponent extends StatelessWidget {
  var productList = [
    {
      "name": "Blue Luxury Handbag",
      "picture": "images/abc.jpg",
      "price": 5000.00,
      "color": Colors.blueAccent,
      "size": 14,
    },
    {
      "name": "Gold Fashion Bag",
      "picture": "images/def.jpg",
      "price": 7000.00,
      "color": Colors.brown.withOpacity(.60),
      "size": 16,
    },
    {
      "name": "Black Office Code Bag",
      "picture": "images/ghi.jpg",
      "price": 4500.00,
      "color": Colors.black38,
      "size": 33,
    },
    {
      "name": "Red Luxury Handbag",
      "picture": "images/jkl.jpg",
      "price": 5000.00,
      "color":Colors.indigo,
      "size": 30,
    },
    {
      "name": "Fashion Backpack",
      "picture": "images/jkl.jpg",
      "price": 4500.00,
      "color":Colors.pink,
      "size": 18,
    },
    {
      "name": "MCM Travelling",
      "picture": "images/jkl.jpg",
      "price": 15000.00,
      "color":Colors.grey.withOpacity(.30),
      "size": 34,
    },
  ];
  
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
    itemCount: productList.length,
    gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.80,
          mainAxisSpacing: 2.0,
          crossAxisSpacing: 8.0,
          crossAxisCount: 2),
    itemBuilder: (BuildContext context, int index) {
      return _SingleProd(
        prodName: productList[index]['name'],
        prodPicture: productList[index]['picture'],
        prodPrice: productList[index]['price'],
        prodColor:productList[index]['color'],

      );
    });
  }  
}

class _SingleProd extends StatelessWidget {
  final prodName;
  final prodPicture;
  final prodPrice;
  final prodColor;
  final prodSize;
  _SingleProd({
    this.prodName,
    this.prodPicture,
    this.prodPrice,
    this.prodColor,
    this.prodSize
  });
  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryDetails(
        name: prodName,
        picture: prodPicture,
        price: prodPrice,
        color: prodColor,
        size: prodSize
      ))),
          child: Container(
            padding: EdgeInsets.only(top:10,),
            child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            Container(
                padding: EdgeInsets.all(8.0),
                height: 180,
                width: 160,
                decoration: BoxDecoration(
                  color:prodColor,
                  borderRadius:BorderRadius.circular(20)
                ),
                child: Image.asset(prodPicture),
              ),
            Padding(padding: EdgeInsets.only(top:4.0, bottom: 1.0,),
            child: Text(prodName,
                    style: TextStyle(
                     fontSize: 14.0),),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(left:40,),
              child: Text('$prodPrice')),
        ],
      ),
          ),
    );
  }
}
