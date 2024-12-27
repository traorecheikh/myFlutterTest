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
    return Container(
      padding: EdgeInsets.only(left: 27),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("What's up, Chouly!",
          style: TextStyle(
            fontSize: 35,
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ) ,
          ),
          SizedBox(height: 30,),
          Text("CATEGORIES",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ) ,
          ),
          SizedBox(height: 25,),
          Container(
            height: 140,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                MyCard(type: "Business", taskNumber: 90, myColor: Colors.pink,),
                SizedBox(width: 30,),
                MyCard(type: "Personal", taskNumber: 30, myColor: Colors.amber,),
                SizedBox(width: 30,),
                MyCard(type: "Directed", taskNumber: 70, myColor: Colors.orange,),
                SizedBox(width: 30,),
                MyCard(type: "Cheikh", taskNumber: 10, myColor: Colors.blue,),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Text("TODAY'S TASKS",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ) ,
          ),
          SizedBox(height: 15,),
          Container(
            height: 300,
            child: ListView(
              children: [
                task(myColor: Colors.blue, myText: "Make Love With Oulimata"),
                task(myColor: Colors.pink, myText: "Make Babies With Oulimata"),
                task(myColor: Colors.orange, myText: "Spend my Life With Oulimata"),
                task(myColor: Colors.indigo, myText: "Make Oulimata My Queen"),
                task(myColor: Colors.deepPurple, myText: "Make Oulimata the Happiest ever"),
                task(myColor: Colors.red, myText: "Give Oulimata an unforgettable wedding"),
              ],
            ),
          )
        ],
      ),
    );
  }

}
class MyIcons extends StatelessWidget{
  late IconData icone;
  MyIcons({required this.icone});
  @override
  Widget build(BuildContext context) {
    return Icon(icone,color: Colors.grey,size: 35,);
  }

}











class MyCard extends StatelessWidget{
  var taskNumber;
  var type;
  Color myColor;
  MyCard({required this.type, required this.taskNumber,required this.myColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("${taskNumber} Tasks"),
          SizedBox(height: 15,),
          Text("${type}", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
          SizedBox(height: 15,),
          Stack(
            children: [
              Container(
                height: 4,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [myColor,Colors.transparent],
                    begin: Alignment.bottomLeft,
                    end: Alignment.center
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20)
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}
























class task extends StatelessWidget{
  var myColor;
  var myText;
  task({required this.myColor,required this.myText});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      padding: EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.circle_outlined,color: myColor,)),
          SizedBox(width: 15,),
          Text(myText,style: TextStyle(fontSize: 15,color: Colors.grey),)
        ],
      ),
    );
  }
  
}