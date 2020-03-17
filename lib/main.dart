import 'package:fantacode/screens/home.dart';
import 'package:fantacode/screens/userData.dart';
import 'package:fantacode/screens/userList.dart';
import 'package:flutter/material.dart';

void main() => runApp(Application());

class Application  extends StatelessWidget {
  var item;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  // Start the app with the "/" named route. In this case, the app starts
  // on the FirstScreen widget.
  initialRoute: '/',
  
  routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
    '/': (context) => UserList(),
    // When navigating to the "/second" route, build the SecondScreen widget.
    // '/second': (context) => UserList(),

    '/second': (context) => UserData(item: item),
  },
);
  }
}
