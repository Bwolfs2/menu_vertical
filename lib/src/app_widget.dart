import 'package:flutter/material.dart';
import 'package:menu_vertical/src/home/home_module.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Slidy',
      theme: ThemeData(
        primaryColor: Color(0xff33334c),
        accentColor: Color(0xffd64a73)
      ),
      home: HomeModule(),
    );
  }
}
