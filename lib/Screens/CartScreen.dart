
import 'package:flutter/material.dart';
import '../model/BottomNavigationBarItems.dart';
class CartScreen extends StatefulWidget {
  final Destination destination;
  CartScreen(this.destination);
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.destination.title),
      ),
    );
  }
}

