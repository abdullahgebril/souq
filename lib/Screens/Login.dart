

import 'package:flutter/material.dart';
import '../widgets/LoginForm.dart';
class Login extends StatelessWidget {
  final String title;
  Login(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            title
        ),
      ),
      body: Container(decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpeg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.cyanAccent.withOpacity(0.5), BlendMode.dstOut),
          )),child: LogInForm()) ,
    );
  }
}
