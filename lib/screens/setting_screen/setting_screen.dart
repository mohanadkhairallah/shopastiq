import 'package:flutter/material.dart';
import 'package:shopastiq/screens/notification_screen/notification_screen_app_bar.dart';
import 'package:shopastiq/screens/notification_screen/notification_screen_bottom_bar.dart';
import 'package:shopastiq/screens/setting_screen/setting_screen_app_bar.dart';
import 'package:shopastiq/screens/setting_screen/setting_screen_buttom_bar.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Column(
          children: [
            SettingScreenAppBar(),
            Expanded(
              child: Container(
                child: Center(
                  child: Text('There is No Setting for Now !'),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: SettingScreenButtomBar(),
      ),
    );
  }
}
