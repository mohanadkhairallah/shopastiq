import 'package:flutter/material.dart';

import '../../const.dart';

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
          color: themeColor,
        )),
        Tab(
            icon: Icon(
          Icons.whatshot,
          color: themeColor,
        )),
        Tab(
            icon: Icon(
          Icons.devices_other,
          color: themeColor,
        )),
        Tab(
            icon: Icon(
          Icons.person,
          color: themeColor,
        )),
        Tab(
            icon: Icon(
          Icons.sentiment_very_satisfied,
          color: themeColor,
        )),
      ],
    ));
  }
}
