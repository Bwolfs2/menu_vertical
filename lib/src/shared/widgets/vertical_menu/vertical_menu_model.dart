import 'package:flutter/material.dart';

class VerticalMenuModel
{
 final IconData icon;
  final Widget Function(BuildContext context) pageBuilder;

  VerticalMenuModel({this.icon, this.pageBuilder});
}