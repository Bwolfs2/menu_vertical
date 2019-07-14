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
        child: closeButtom
            ? Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      width: 1,
                      color: Colors.black87,
                    ),
                  ),
                  color: Theme.of(context).primaryColor,
                ),
                height: 70,
                width: 70,
                child: Icon(
                  icon,
                  color: Theme.of(context).accentColor,
                ),
              )
            : Container(
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
                height: 70,
                width: 70,
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ), aspectRatio: 1,
      ),
    );
  }
}
