import 'package:flutter/material.dart';
import 'package:shopastiq/const.dart';
import 'package:shopastiq/modules/auth_service.dart';
import 'package:shopastiq/screens/favorite_screen.dart';
import 'package:shopastiq/screens/home_screen/home_screen.dart';
import 'package:shopastiq/screens/notification_screen.dart';
import 'package:shopastiq/screens/setting_screen.dart';

class DefulteScreenButtomBar extends StatelessWidget {
  final bool favorite;
  final bool home;
  final bool notification;
  final bool setting;
  DefulteScreenButtomBar(
      {this.favorite, this.home, this.notification, this.setting});

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          ),
          color: themeColor),
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
                          color: secondryColor,
                        ),
                        Text(
                          'LogOut',
                          style: TextStyle(
                            color: secondryColor,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () async {
                      _auth.signOut();
                    },
                  ),
                ),
                Expanded(
                  child: TextButton(
                    child: Column(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: favorite ? primaryColor : secondryColor,
                          size: favorite ? 40 : null,
                        ),
                        favorite
                            ? Container()
                            : Text(
                                'Favorite',
                                style: TextStyle(
                                  color: secondryColor,
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
                          color: home ? primaryColor : secondryColor,
                          size: home ? 40 : null,
                        ),
                        home
                            ? Container()
                            : Text(
                                'Home',
                                style: TextStyle(
                                  color: secondryColor,
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
                          color: notification ? primaryColor : secondryColor,
                          size: notification ? 40 : null,
                        ),
                        notification
                            ? Container()
                            : Text(
                                'Notification',
                                style: TextStyle(
                                  color: secondryColor,
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
                          color: setting ? primaryColor : secondryColor,
                          size: setting ? 40 : null,
                        ),
                        setting
                            ? Container()
                            : Text(
                                'Setting',
                                style: TextStyle(
                                  color: secondryColor,
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
