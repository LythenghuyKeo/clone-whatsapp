import 'package:flutter/material.dart';
class PeoplePage extends StatefulWidget{
  State<PeoplePage> createState() => PeoplePageState();
}

class PeoplePageState  extends State<PeoplePage>{
  Widget build(BuildContext){
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
      body: Column(

      ),
    );
  }
}