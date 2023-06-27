import 'package:flutter/material.dart';
import './model/chats.dart';
class ChatPage extends StatefulWidget{
  @override
  State<ChatPage> createState()=> chatpageState();
}
class chatpageState extends State<ChatPage>{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.edit),),
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body:ListView.builder(
        itemCount: chats.length,
          itemBuilder: (context,i){
          return Card(
            child: ListTile(
              title: Text(chats[i].name),
              subtitle: Text(chats[i].msg),
              leading: Image.network('http://picsum.photos/250?image=9'),

            ),
          );
          }
      )
    );
  }
}