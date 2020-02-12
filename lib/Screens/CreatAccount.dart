import 'package:flutter/material.dart';
import '../widgets/CreatAccount.dart';

class CreatAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/background.jpeg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.cyanAccent.withOpacity(0.2), BlendMode.dstOut),
          )),
          child: CreatAccount()),
    );
  }
}
