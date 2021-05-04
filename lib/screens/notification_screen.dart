import 'package:flutter/material.dart';
import 'package:shopastiq/widgets/defulte_screen_app_bar.dart';
import 'package:shopastiq/widgets/defulte_screen_buttom_bar.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Column(
          children: [
            DefulteScreenAppBar(
              title: 'Notifications',
            ),
            Expanded(
              child: Container(
                child: Center(
                  child: Text('There is No Notifications !'),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: DefulteScreenButtomBar(
          favorite: false,
          home: false,
          notification: true,
          setting: false,
        ),
      ),
    );
  }
}
