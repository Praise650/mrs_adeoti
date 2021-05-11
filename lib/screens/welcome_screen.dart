import 'package:flutter/material.dart';
import 'package:mrs_adeoti/categories/welcome_screen_category.dart/welcome_accessories_screen.dart';
import 'package:mrs_adeoti/categories/welcome_screen_category.dart/welcome_all_screen.dart';
import 'package:mrs_adeoti/categories/welcome_screen_category.dart/welcome_bags_screen.dart';
import 'package:mrs_adeoti/categories/welcome_screen_category.dart/welcome_clothing_screen.dart';

import 'cart.dart';
import 'category.dart';

class WelcomeScreen extends StatefulWidget {
  // TabController tabController;
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  String someText = "Some text";
  var _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
    someText = "Some other text changed";
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            _drawer();
          },
          color: Colors.black45, icon: Icon(Icons.menu),),
        backgroundColor: Colors.white.withOpacity(.01),
        title: Center(
          child: Column(
            children: [
              Text(
                'Welcome',
                style: TextStyle(
                  color: Colors.black45,
                ),
              ),
              Text(
                'Shopping',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black38,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black45,
          ),
        ],
        elevation: 0.0,
        bottom: TabBar(
          indicatorColor:  Colors.black.withOpacity(.30),
          controller: tabController,
          tabs: [
            Text('All',style: TextStyle(color:Colors.black45),),
            Text('Clothing',style: TextStyle(color:Colors.black45),),
            Text('Bags',style: TextStyle(color:Colors.black45),),
            Text('Accessories',style: TextStyle(color:Colors.black45,),),
            IconButton(
              icon: Icon(
                Icons.more_horiz_outlined,
                color: Colors.black45,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          ShowWelcomeAllCategory(),
          ShowWelcomeClothingCategory(),
          ShowWelcomeBagsCategory(),
          ShowWelcomeAccessoriesCategory(),
          ShowWelcomeAllCategory(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black,
        elevation: 6.0,
        backgroundColor: Colors.white.withOpacity(.10),
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WelcomeScreen()));
              },
              icon: Icon(
                Icons.home_outlined,
              ),
              color: Colors.black54,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Category()));
              },
              icon: Icon(
                Icons.category,
              ),
              color: Colors.black54,
            ),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyCart(name: "noName",image: 'images/xyz.jpg',price:'\$4,0000' ,)));
              },
              icon: Icon(
                Icons.shopping_cart_outlined,
              ),
              color: Colors.black54,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.black54,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_add_alt,
              color: Colors.black54,
            ),
            label: 'Me',
          ),
        ],
      ),
    );
  }
  Widget _drawer(){
    return Drawer(
      elevation: 6.0,
      child: Row(children:[
      Text(''),
    ],),);
  }
}
