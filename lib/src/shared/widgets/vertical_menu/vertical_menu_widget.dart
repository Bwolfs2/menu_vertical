import 'package:flutter/material.dart';
import 'package:menu_vertical/src/shared/widgets/menu_item/menu_item_widget.dart';

class VerticalMenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      //color: Color(0xff33334c),
      child: Column(children: [
        MenuItemWidget(
          icon: Icons.close,
          action: () {},
          closeButtom: true,
        ),
        MenuItemWidget(
          icon: Icons.mic,
          action: () {},
        ),
        MenuItemWidget(
          icon: Icons.local_drink,
          action: () {},
        ),
        MenuItemWidget(
          icon: Icons.video_call,
          action: () {},
        ),
        MenuItemWidget(
          icon: Icons.change_history,
          action: () {},
        ),
        MenuItemWidget(
          icon: Icons.casino,
          action: () {},
        ),
         MenuItemWidget(
          icon: Icons.image_aspect_ratio,
          action: () {},
        ),
         MenuItemWidget(
          icon: Icons.book,
          action: () {},
        )
      ]),
    );
  }
}
