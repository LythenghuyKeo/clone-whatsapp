import 'dart:io';

class Chat{
  final String name;
  final String msg;
  final String pic;
  Chat(this.name,this.msg,this.pic);
}
List<Chat> chats = [
  Chat('kei','hi','http://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
  Chat('jij', 'hi','http://docs.flutter.dev/assets/images/dash/dash-fainting.gif' )
];