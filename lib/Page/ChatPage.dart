import 'package:flutter/material.dart';
import '../main.dart';
import '../model/chats.dart';
class ChatPage extends StatefulWidget{
  @override
  State<ChatPage> createState()=> chatpageState();
}
class chatpageState extends State<ChatPage>{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.edit),),

      body:ListView.builder(
        itemCount: chats.length,
          itemBuilder: (context,i){
          return Card(
            child: ListTile(
              onTap:(){setState(() {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>MyApp()));
              });},
              title: Text(chats[i].name,),
              subtitle: Text(chats[i].msg,style: TextStyle(fontSize: 10),),
              leading: Image.network(chats[i].pic),

            ),
          );
          }
      )
    );
  }
}