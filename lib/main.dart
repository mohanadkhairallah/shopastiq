import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopastiq/navi.dart';
import 'modules/auth_service.dart';
import 'modules/my_User.dart';
import 'modules/products_list_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider<MyUser>.value(
          initialData: null,
          value: AuthService().user,
        ),
        ChangeNotifierProvider(
          create: (context) => ProductsListData(),
          child: MaterialApp(
            home: Navi(),
          ),
        ),
      ],
      child: MaterialApp(
        home: Navi(),
      ),
    );
  }
}
