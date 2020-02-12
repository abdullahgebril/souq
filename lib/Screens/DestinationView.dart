




import 'package:flutter/material.dart';
import '../model/BottomNavigationBarItems.dart';
import 'ProductsScreen.dart';
import 'SearchScreen.dart';
import 'CartScreen.dart';
import 'ActivityScreen.dart';
import 'UserScreen.dart';
class DestinationView extends StatefulWidget {
  final Destination destination;
  DestinationView(this.destination);
  @override
  _DestinationViewState createState() => _DestinationViewState();
}

class _DestinationViewState extends State<DestinationView> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {

        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            switch(settings.name) {
              case '/':
                return ProductsScreen( widget.destination);
              case '/search':
                return SearchScreen(widget.destination);
              case '/cart':
                return CartScreen(widget.destination);
              case '/activity':
                return ActivityScreen(widget.destination);
              case '/user':
                return UserScreen(widget.destination);
            }
          },
        );
      },
    );
  }
}