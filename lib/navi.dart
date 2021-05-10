import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopastiq/screens/home_screen/home_screen.dart';
import 'package:shopastiq/screens/login_screen.dart';
import 'modules/my_User.dart';

class Navi extends StatefulWidget {
  @override
  _NaviState createState() => _NaviState();
}

class _NaviState extends State<Navi> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser>(context);

    if (user == null) {
      return LoginScreen();
    } else {
      return HomeScreen();
    }
  }
}
