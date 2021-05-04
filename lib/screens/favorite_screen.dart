import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopastiq/modules/products_list_data.dart';
import 'package:shopastiq/widgets/defulte_screen_app_bar.dart';
import 'package:shopastiq/widgets/defulte_screen_buttom_bar.dart';
import 'package:shopastiq/widgets/product_List_Viewer.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductsListData>(builder: (context, productdata, child) {
      return SafeArea(
        child: Scaffold(
          backgroundColor:
              productdata.favoriteList.length == 0 ? Colors.grey : Colors.white,
          body: Column(
            children: [
              DefulteScreenAppBar(
                title: 'Favorites',
              ),
              productdata.favoriteList.length == 0
                  ? Expanded(
                      child: Container(
                        child: Center(
                          child: Text('You Didnt like anything Yet  !'),
                        ),
                      ),
                    )
                  : Expanded(
                      child: ProductListViewer(productdata.favoriteList),
                    ),
            ],
          ),
          bottomNavigationBar: DefulteScreenButtomBar(
            favorite: true,
            home: false,
            notification: false,
            setting: false,
          ),
        ),
      );
    });
  }
}
