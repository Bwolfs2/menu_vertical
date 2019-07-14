import 'package:flutter/material.dart';

class MenuItemWidget extends StatelessWidget {
  final IconData icon;
  final bool selected;
  final Function() action;
  final bool closeButtom;

  const MenuItemWidget(
      {Key key,
      @required this.icon,
      this.selected = false,
      this.action,
      this.closeButtom = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        child: Container(          
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                width: 1,
                color: Colors.black87,
              ),
            ),
            color: selected
                ? Theme.of(context).accentColor
                : Theme.of(context).primaryColor,
          ),
          child: Icon(
            icon,
            size: 50,
            color: closeButtom ? Theme.of(context).accentColor : Colors.white,
          ),
        ),
        aspectRatio: 1,
      ),
    );
  }
}
