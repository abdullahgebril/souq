import 'package:flutter/cupertino.dart';

import '../model/Categories.dart';

class Data with ChangeNotifier {
  List categories = [
    Category('منزلى', 'Home', 'assets/images/furniture.png'),
    Category('اجهزة', 'Tech', 'assets/images/mobile.png'),
    Category('فنون', 'Art', 'assets/images/art.png'),
    Category('رجالى', 'Men', 'assets/images/men.png'),
    Category('حريمى', 'Women', 'assets/images/women.png'),
    Category('حريمى', 'Kids', 'assets/images/kids.jpg'),
    Category('حريمى', 'Pets', 'assets/images/pets.png'),
    Category('حريمى', 'Fitness', 'assets/images/fitness.jpg'),

  ];
}
