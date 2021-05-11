import 'package:flutter/material.dart';

class WomenCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color:Colors.red,
                  shape:BoxShape.rectangle,
                  borderRadius:BorderRadius.circular(20)
                ),
                child: InkWell(onTap: ()=>Navigator.pop(context),
                                  child: ListTile(
                    contentPadding: EdgeInsets.fromLTRB(8.0,0.0,8.0,0.0),
                    enabled: true,
                    onTap: (){},
                    leading: Image.asset('images/abc.jpg',fit: BoxFit.cover,width: 100,height: 100,),
                    title: Text('Ada'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  color:Colors.red,
                  shape:BoxShape.rectangle,
                  borderRadius:BorderRadius.circular(20)
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.all(8.0),
                  enabled: true,
                  onTap: (){},
                  leading: Image.asset('images/def.jpg',fit: BoxFit.cover,width: 80,height: 80,),
                  title: Text('KeyBoard'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  color:Colors.red,
                  shape:BoxShape.rectangle,
                  borderRadius:BorderRadius.circular(20)
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.all(8.0),
                  enabled: true,
                  onTap: (){},
                  leading: Image.asset('images/ghi.jpg',fit: BoxFit.cover,width: 80,height: 80,),
                  title: Text('Horses'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  color:Colors.red,
                  shape:BoxShape.rectangle,
                  borderRadius:BorderRadius.circular(20)
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.all(8.0),
                  enabled: true,
                  onTap: (){},
                  leading: Image.asset('images/jkl.jpg',fit: BoxFit.cover,width: 80,height: 80,),
                  title: Text('Bisi'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  color:Colors.red,
                  shape:BoxShape.rectangle,
                  borderRadius:BorderRadius.circular(20)
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.all(8.0),
                  enabled: true,
                  onTap: (){},
                  leading: Image.asset('images/abc.jpg',fit: BoxFit.cover,width: 80,height: 80,),
                  title: Text('Horses'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
