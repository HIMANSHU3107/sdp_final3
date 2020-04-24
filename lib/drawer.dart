import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  DrawerList({this.icon,this.drawertext});
  final IconData icon;
  final String drawertext;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          SizedBox(width: 15.0,),
          Text(drawertext)
        ],
      ),
    );
  }
}