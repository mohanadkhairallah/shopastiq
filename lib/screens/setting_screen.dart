import 'package:flutter/material.dart';
import 'package:shopastiq/widgets/bottom_bar_def.dart';
import 'package:shopastiq/widgets/defulte_screen_app_bar.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Column(
          children: [
            DefulteScreenAppBar(
              title: 'Settings',
            ),
            Expanded(
              child: Container(
                child: Center(
                  child: Text('There is No Setting for Now !'),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: ButtomBarDef(
          favorite: false,
          home: false,
          notification: false,
          setting: true,
        ),
      ),
    );
  }
}
