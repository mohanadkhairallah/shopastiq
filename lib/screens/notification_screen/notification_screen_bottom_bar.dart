import 'package:flutter/material.dart';
import 'package:shopastiq/screens/favorite_screen/favorite_screen.dart';
import 'package:shopastiq/screens/home_screen/home_screen.dart';
import 'package:shopastiq/screens/setting_screen/setting_screen.dart';

class NotificationScreenButtomBar extends StatelessWidget {
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
                          color: Colors.white,
                        ),
                        Text(
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
                          color: Colors.white,
                        ),
                        Text(
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
                  child: Column(
                    children: [
                      Icon(
                        Icons.notifications,
                        color: Colors.yellow,
                        size: 40,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TextButton(
                    child: Column(
                      children: [
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                        Text(
                          'Setting',
                          style: TextStyle(
                            fontSize: 10,
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