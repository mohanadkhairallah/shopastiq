import 'package:flutter/material.dart';
import 'package:shopastiq/screens/favorite_screen.dart';
import 'package:shopastiq/screens/home_screen/home_screen.dart';
import 'package:shopastiq/screens/notification_screen.dart';
import 'package:shopastiq/screens/setting_screen.dart';

class ButtomBarDef extends StatelessWidget {
  final bool favorite;
  final bool home;
  final bool notification;
  final bool setting;
  ButtomBarDef({this.favorite, this.home, this.notification, this.setting});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          ),
          color: Color(0xff297DAE)),
      child: SizedBox(
        height: 60,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    child: Column(
                      children: [
                        Icon(
                          Icons.logout,
                          color: Colors.white,
                        ),
                        Text(
                          'LogOut',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: TextButton(
                    child: Column(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: favorite ? Colors.yellow : Colors.white,
                          size: favorite ? 40 : null,
                        ),
                        favorite
                            ? Container()
                            : Text(
                                'Favorite',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FavoriteScreen(),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: TextButton(
                    child: Column(
                      children: [
                        Icon(
                          Icons.home,
                          color: home ? Colors.yellow : Colors.white,
                          size: home ? 40 : null,
                        ),
                        home
                            ? Container()
                            : Text(
                                'Home',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: TextButton(
                    child: Column(
                      children: [
                        Icon(
                          Icons.notifications,
                          color: notification ? Colors.yellow : Colors.white,
                          size: notification ? 40 : null,
                        ),
                        notification
                            ? Container()
                            : Text(
                                'Notification',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NotificationScreen(),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: TextButton(
                    child: Column(
                      children: [
                        Icon(
                          Icons.menu,
                          color: setting ? Colors.yellow : Colors.white,
                          size: setting ? 40 : null,
                        ),
                        setting
                            ? Container()
                            : Text(
                                'Setting',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SettingScreen(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
