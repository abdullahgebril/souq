import 'package:flutter/material.dart';

import 'Screens/TopScreen.dart';
import 'package:provider/provider.dart';
import 'Data/Data.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Data()),
      ],

      child: MaterialApp(
        title: 'EgySouq',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TopScreen(),
      ),
    );
  }
}
