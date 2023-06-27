import 'package:flutter/material.dart';
class CallPage extends StatefulWidget{
  @override
  State<CallPage> createState() => CallPageState();
}
class CallPageState extends State<CallPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.call),),

    );
  }
}