import 'package:flutter/material.dart';
import 'package:mrs_adeoti/categories/all_screen.dart';
import 'package:mrs_adeoti/categories/men.dart';
import 'package:mrs_adeoti/categories/women.dart';
import 'package:mrs_adeoti/screens/welcome_screen.dart';

import 'cart.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  String someText = "Some text";
  var _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.80),
        leading: IconButton(
          onPressed: ()=>Navigator.pop(context),
          color: Colors.black45, icon: Icon(Icons.arrow_back_outlined),),
        title: Center(
            child: Text(
          'Categories',
          style: TextStyle(
            color: Colors.black45,
          ),
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8.0, 22.0, 8.0,),
            child: Icon(
              Icons.search,
              size: 25,
              color:Colors.black45
            ),
          ),
        ],
        bottom: TabBar(
          labelColor: Colors.blueAccent,
          unselectedLabelColor: Colors.black45,
          indicatorColor:  Colors.black.withOpacity(.30),
          controller: tabController,
          tabs: [
            Text('All'),
            Text('Men'),
            Text('Women'),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          AllCategory(),
          MenCategory(),
          WomenCategory(),
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
}
