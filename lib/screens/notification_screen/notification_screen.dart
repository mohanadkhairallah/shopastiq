import 'package:flutter/material.dart';
import 'package:shopastiq/screens/favorite_screen/favorite_screen_buttom_bar.dart';
import 'package:shopastiq/screens/notification_screen/notification_screen_app_bar.dart';
import 'package:shopastiq/screens/notification_screen/notification_screen_bottom_bar.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Column(
          children: [
            NotificationScreenAppBar(),
            Expanded(
              child: Container(
                child: Center(
                  child: Text('There is No Notifications !'),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: NotificationScreenButtomBar(),
      ),
    );
  }
}
