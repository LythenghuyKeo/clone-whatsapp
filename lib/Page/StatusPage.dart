import 'package:flutter/material.dart';

import '../model/statuses.dart';
class StatusPage extends StatefulWidget{
  @override
  State<StatusPage> createState() => StatusPageState();
}
class StatusPageState extends State<StatusPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
     floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.edit),),
      body: ListView.builder(
          itemCount: statuses.length,
          itemBuilder: (context,i){
            if (i==0){
              return Card(
                child: ListTile(
                  leading: CircleAvatar(backgroundImage: NetworkImage(statuses[i].png),),
                  title: Text('My Status',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  subtitle: Text(statuses[i].datetime),
                ),
              );
            }
            else {
              return Column(
                children: [
                  Text('Recent Update'),
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.lightGreen,
                        backgroundImage: NetworkImage(statuses[i].png),),
                      title: Text(statuses[i].name),
                      subtitle: Text(statuses[i].datetime),
                    ),
                  )
                ],
              );
            }
            return Card(
              child: ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage(statuses[i].png),),
                title: Text(statuses[i].name),
                subtitle: Text(statuses[i].datetime),
              ),
            );
          }),
    );
  }
}