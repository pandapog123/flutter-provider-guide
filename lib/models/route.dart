import 'package:flutter/material.dart';

class Route {
  Widget widget;
  String title;
  Icon icon;
  List<Widget>? menuItems;

  Route({
    required this.widget,
    required this.title,
    required this.icon,
    this.menuItems,
  });
}
