



import 'package:flutter/material.dart';
import '../model/BottomNavigationBarItems.dart';
class UserScreen extends StatefulWidget {
  final Destination destination;
  UserScreen(this.destination);
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(widget.destination.title),
      ),
    );
  }
}