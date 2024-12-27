import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //icon1
            children: [
              IconButton(onPressed: (){}, icon:MyIcons(icone: Icons.menu),),
              Row(
                children: [
                  //icon2
                  IconButton(onPressed: (){}, icon:MyIcons(icone: Icons.search),),
                  //espace entre des elements soit vertical soit horizontal
                  //ici horizontal
                  SizedBox(width: 20),
                  //icon3
                  IconButton(onPressed: (){}, icon:MyIcons(icone: Icons.notifications_none),),
                ],
              )
            ],
          ),
        ),
        body: Dashboard(),
      ),
    );
  }
}

class Dashboard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

  
}