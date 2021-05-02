import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopastiq/screens/home_screen/home_screen.dart';
import 'modules/products_list_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductsListData(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
