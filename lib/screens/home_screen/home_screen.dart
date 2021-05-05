import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopastiq/modules/products_list_data.dart';
import 'package:shopastiq/screens/home_screen/home_screen_app_bar.dart';
import 'package:shopastiq/screens/home_screen/home_screen_tab_bar.dart';
import 'package:shopastiq/widgets/defulte_screen_buttom_bar.dart';
import 'package:shopastiq/widgets/product_List_Viewer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider.of<ProductsListData>(context).getProductList();

    return Consumer<ProductsListData>(builder: (context, productdata, child) {
      return DefaultTabController(
        length: 5,
        child: Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                HomeScreenAppBar(
                  cartCount: productdata.inCartItems.length.toString(),
                ),
                HomeScreenTabBar(),
                Expanded(
                  child: TabBarView(
                    children: [
                      ProductListViewer(productdata.allProductsList),
                      ProductListViewer(productdata.jeweleryList),
                      ProductListViewer(productdata.electronicsList),
                      ProductListViewer(productdata.menClothList),
                      ProductListViewer(productdata.womenClothList),
                    ],
                  ),
                )
              ],
            ),
          ),
          bottomNavigationBar: DefulteScreenButtomBar(
            favorite: false,
            home: true,
            notification: false,
            setting: false,
          ),
        ),
      );
    });
  }
}
