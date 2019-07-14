import 'package:flutter/material.dart';
import 'package:menu_vertical/src/shared/widgets/vertical_menu/vertical_menu_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: VerticalMenuWidget(),
      drawerScrimColor: Colors.transparent,      
      appBar: AppBar(   
        iconTheme: IconThemeData(
          color: Colors.blueGrey
        ),     
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Music",
          style: TextStyle(
            color: Colors.blueGrey,
          ),
        ),
        centerTitle: true,        
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.blueGrey,
            ),
          )
        ],
      ),
    );
  }
}
