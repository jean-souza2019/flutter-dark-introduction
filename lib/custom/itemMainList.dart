import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget getItemList(String title, String subtitle, String childrenTitle) {
  return Card(
    child: ListTile(
        leading: Icon(Icons.add_circle_outline_outlined),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Text(childrenTitle)),
  );
}
