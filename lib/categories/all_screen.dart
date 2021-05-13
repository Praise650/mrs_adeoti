import 'package:flutter/material.dart';
import 'package:mrs_adeoti/sub_category/sub_category_all.dart';

class AllCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
              padding: const EdgeInsets.only(left:8.0,top: 30,bottom: 20,),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AllSubCategory()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                  ),
                  child: Row(
                    children: [
          Image.asset('images/abc.jpg',fit: BoxFit.cover,height: 80, width: 80,),
          Padding(
            padding: const EdgeInsets.only(left:16.0,),
            child: Text('Clothing',style: TextStyle(color:Colors.blueAccent),),
          ),
                    ],
                  ),
                ),
              ),
            ),
          
          Padding(
              padding: const EdgeInsets.only(left:8.0,top: 20,bottom: 20,),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AllSubCategory()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                  ),
                  child: Row(
                    children: [
          Image.asset('images/xyz.jpg',fit: BoxFit.cover,height: 80, width: 80,),
          Padding(
            padding: const EdgeInsets.only(left:16.0,),
            child: Text('Bags',style: TextStyle(color:Colors.blueAccent),),
          ),
                    ],
                  ),
                ),
              ),
            ),
          Padding(
              padding: const EdgeInsets.only(left:8.0,top: 20,bottom: 20,),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AllSubCategory()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                  ),
                  child: Row(
                    children: [
          Image.asset('images/xyz.jpg',fit: BoxFit.cover,height: 80, width: 80,),
          Padding(
            padding: const EdgeInsets.only(left:16.0,),
            child: Text('Accessories',style: TextStyle(color:Colors.blueAccent),),
          ),
                    ],
                  ),
                ),
              ),
            ),
          Padding(
              padding: const EdgeInsets.only(left:8.0,top: 20,bottom: 20,),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AllSubCategory()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                  ),
                  child: Row(
                    children: [
          Image.asset('images/xyz.jpg',fit: BoxFit.cover,height: 80, width: 80,),
          Padding(
            padding: const EdgeInsets.only(left:16.0,),
            child: Text('Shoe',style: TextStyle(color:Colors.blueAccent),),
          ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
