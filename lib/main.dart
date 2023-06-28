import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/Page/CallPage.dart';
import 'package:flutter_clone_whatsapp/Page/ChatPage.dart';
import 'package:flutter_clone_whatsapp/Page/StatusPage.dart';

import 'Page/PeoplePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
   late TabController tabController ;
 @override
 void initState(){
   tabController = TabController(length: 4, vsync:this ,initialIndex: 0);//length = number of TabBar
   tabController.addListener(() { setState(() {

   });});
   super.initState();
 }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.camera)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){},icon: Icon(Icons.more_vert),)
        ],
        bottom: TabBar(
          controller: tabController,
          tabs: [
            IconButton(onPressed:(){} , icon: Icon(Icons.people,size: 30,)),
            Text('Chat',style: TextStyle(fontSize: 20,color: Colors.white),),
            Text('Status',style: TextStyle(fontSize: 20,color: Colors.white),),
            Text('Calls',style: TextStyle(fontSize: 20,color: Colors.white),)
          ],
        ),
        title: Text('Whats app'),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
                PeoplePage(),
                ChatPage(),
                StatusPage(),
                CallPage()
        ],

    ),

      );
  }
}

