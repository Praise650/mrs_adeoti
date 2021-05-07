import 'package:flutter/material.dart';
import 'package:mrs_adeoti/categories/all_screen.dart';
import 'package:mrs_adeoti/categories/men.dart';
import 'package:mrs_adeoti/categories/women.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  String someText = "Some text";

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    someText = "Some other text changed";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
            child: Text(
          'Categories',
          style: TextStyle(
            color: Colors.black54,
          ),
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8.0, 22.0, 8.0),
            child: Icon(
              Icons.search,
              size: 25,
            ),
          ),
        ],
        bottom: TabBar(
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
