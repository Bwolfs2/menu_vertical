import 'package:flutter/material.dart';

class VerticalMenuItemWidget extends StatelessWidget {
  final IconData icon;
  final bool selected;
  final void Function() action;
  final bool closeButtom;

  const VerticalMenuItemWidget(
      {Key key,
      @required this.icon,
      this.selected = false,
      this.action,
      this.closeButtom = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      child: GestureDetector(
        onTap: action,
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
            size: MediaQuery.of(context).size.height / 16,             
            color: closeButtom ? Theme.of(context).accentColor : Colors.white,
          ),
        ),
      ),
      aspectRatio: 1,
    );
  }
}
