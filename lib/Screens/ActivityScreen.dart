


import 'package:flutter/material.dart';
import '../model/BottomNavigationBarItems.dart';

class ActivityScreen extends StatefulWidget {
  final Destination destination;
  ActivityScreen(this.destination);
  @override
  _ActivityScreenState createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(widget.destination.title),

      ),
    );
  }
}
