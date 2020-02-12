import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Destination {

  final int index;
  final String title;
  final IconData icon;

  const Destination(this.index, this.title, this.icon);

}


const List<Destination> allDestinations = <Destination>[
  Destination(0,'Home', Icons.home),
  Destination(1,'search', Icons.search),
  Destination(2,'Cart', Icons.shopping_cart),
  Destination(3,'Activity', Icons.local_activity),
  Destination(4,'Profile', Icons.person),
];