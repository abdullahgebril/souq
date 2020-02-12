


import 'package:flutter/material.dart';
import '../model/BottomNavigationBarItems.dart';

class SearchScreen extends StatefulWidget {
  final Destination destination;
  SearchScreen(this.destination);
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.destination.title),
      ),
      body: Container(
        child: Center(
          child: Text('hhhhhhh'),
        ),
      ),
    );
  }
}
