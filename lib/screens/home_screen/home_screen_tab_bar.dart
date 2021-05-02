import 'package:flutter/material.dart';

class HomeScreenTabBar extends StatelessWidget {
  const HomeScreenTabBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TabBar(
      tabs: [
        Tab(
            icon: Icon(
          Icons.store,
          color: Color(0xff297DAE),
        )),
        Tab(
            icon: Icon(
          Icons.whatshot,
          color: Color(0xff297DAE),
        )),
        Tab(
            icon: Icon(
          Icons.devices_other,
          color: Color(0xff297DAE),
        )),
        Tab(
            icon: Icon(
          Icons.person,
          color: Color(0xff297DAE),
        )),
        Tab(
            icon: Icon(
          Icons.sentiment_very_satisfied,
          color: Color(0xff297DAE),
        )),
      ],
    ));
  }
}
