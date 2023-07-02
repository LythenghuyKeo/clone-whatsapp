import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/chats.dart';
class DisplayChat extends StatefulWidget{

  DisplayChat({super.key});

  @override
  State<StatefulWidget> createState()=>DisplayChatState();
}

class DisplayChatState extends State<DisplayChat>{
  late List<Chat> actualchats;

  List users=[];
  fetch_User() async{
    String url= 'http://192.168.1.15/clone-whatsapp/getMessage.php';
    var response=await http.get(Uri.parse(url));
    setState(() {
      users = json.decode(response.body);
    });

  }
  @override
  void initState(){
    fetch_User();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:ListView.builder(
        itemCount: users.length,
          itemBuilder: (context,i){
          return Card(
            child: ListTile(
              title: Text(users[i]['msg_from']),
              subtitle: Text(users[i]['msg']),
              leading:  Image.network(users[i]['img']),
              trailing: Text(users[i]['createdAt']),
            ),
          );
          })
    );
  }
}
