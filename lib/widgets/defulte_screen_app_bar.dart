import 'package:flutter/material.dart';
import 'package:shopastiq/const.dart';

class DefulteScreenAppBar extends StatelessWidget {
  final String title;
  DefulteScreenAppBar({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50.0)),
          color: themeColor),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontFamily: 'Lobster', fontSize: 40, color: secondryColor),
        ),
      ),
    );
  }
}
