import 'package:flutter/material.dart';
import 'package:menu_vertical/src/shared/widgets/vertical_menu/vertical_menu_model.dart';
import 'package:menu_vertical/src/shared/widgets/vertical_menu/vertical_menu_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  VerticalMenuController drawerController;

  @override
  void initState() {
    drawerController = VerticalMenuController();
    super.initState();
  }

  @override
  void dispose() {
    drawerController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VerticalMenuWidget(
      controller: drawerController,
      child: Scaffold(
        drawerScrimColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.blueGrey),
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "Music",
            style: TextStyle(
              color: Colors.blueGrey,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              drawerController.toggle();
            },
            icon: Icon(Icons.menu),
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
      ),
      pages: <VerticalMenuModel>[
        VerticalMenuModel(
          icon: Icons.mic,
          pageBuilder: (_) {
            return Container();
          },
        ),
        VerticalMenuModel(
          icon: Icons.local_drink,
          pageBuilder: (_) {
            return Container();
          },
        ),
        VerticalMenuModel(
          icon: Icons.video_call,
          pageBuilder: (_) {
            return Container();
          },
        ),
        VerticalMenuModel(
          icon: Icons.change_history,
          pageBuilder: (_) {
            return Container();
          },
        ),
        VerticalMenuModel(
          icon: Icons.image_aspect_ratio,
          pageBuilder: (_) {
            return Container();
          },
        ),
        VerticalMenuModel(
          icon: Icons.book,
          pageBuilder: (_) {
            return Container();
          },
        ),
      ],
    );
  }
}
