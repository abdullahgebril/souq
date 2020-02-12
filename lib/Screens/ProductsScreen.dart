


import 'package:flutter/material.dart';
import '../model/BottomNavigationBarItems.dart';
import '../Data/Data.dart';
import 'package:provider/provider.dart';
class ProductsScreen extends StatefulWidget {
  final Destination destination;
  ProductsScreen(this.destination);
  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    final categories = Provider.of<Data>(context).categories;
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.destination.title),
      ),
      body: Container(
      padding: EdgeInsets.only(top: 50),
        child: Column(
          children: <Widget>[
            Container(
              height: screenHeight * 0.2,
              width: screenWidth,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: categories.map((category)=>Container(
                  height: 100,
                  width: 100,
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage(category.categoryImage),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(category.enTitle,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                    ],
                  ),
                )).toList(),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
