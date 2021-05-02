import 'package:flutter/material.dart';

class NotificationScreenAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50.0)),
          color: Color(0xff297DAE)),
      child: Center(
        child: Text(
          'Notifications',
          style: TextStyle(
              fontFamily: 'Lobster', fontSize: 40, color: Colors.white),
        ),
      ),
    );
  }
}
