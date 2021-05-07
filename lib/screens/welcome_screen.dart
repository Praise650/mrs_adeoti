import 'package:flutter/material.dart';
import 'package:mrs_adeoti/categories/welcome_screen_category.dart/welcome_accessories_screen.dart';
import 'package:mrs_adeoti/categories/welcome_screen_category.dart/welcome_all_screen.dart';
import 'package:mrs_adeoti/categories/welcome_screen_category.dart/welcome_bags_screen.dart';
import 'package:mrs_adeoti/categories/welcome_screen_category.dart/welcome_clothing_screen.dart';

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

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
    someText = "Some other text changed";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
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
        leading: InkWell(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => Category())),
          child: Icon(
            Icons.menu,
            color: Colors.black45,
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
          controller: tabController,
          tabs: [
            Text('All'),
            Text('Clothing'),
            Text('Bags'),
            Text('Accessories'),
            IconButton(
              icon: Icon(
                Icons.more_horiz_outlined,
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
        elevation: 6.0,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black54,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category,
              color: Colors.black54,
            ),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
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
