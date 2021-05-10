import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopastiq/const.dart';
import 'package:shopastiq/modules/product.dart';
import 'package:shopastiq/modules/products_list_data.dart';
import 'package:shopastiq/screens/home_screen/home_screen.dart';
import 'package:shopastiq/widgets/defulte_screen_app_bar.dart';
import 'package:shopastiq/widgets/defulte_screen_buttom_bar.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductsListData>(builder: (context, productdata, child) {
      return SafeArea(
        child: Scaffold(
          backgroundColor:
              productdata.inCartItems.length == 0 ? Colors.grey : Colors.white,
          body: Column(
            children: [
              DefulteScreenAppBar(
                title: 'Your Cart',
              ),
              productdata.inCartItems.length == 0
                  ? Expanded(
                      child: Container(
                        child: Center(
                          child: Text('You Didnt purches anything Yet  !'),
                        ),
                      ),
                    )
                  : Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            Product product = productdata.inCartItems[index];
                            return Container(
                              decoration: index % 2 == 0
                                  ? BoxDecoration()
                                  : BoxDecoration(color: Colors.grey),
                              padding: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    ('${index + 1} -'),
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    child: Text(
                                      product.title,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  Text(
                                    '${product.price} SP',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                            );
                          },
                          itemCount: productdata.inCartItems.length,
                        ),
                      ),
                    ),
              productdata.inCartItems.length != 0
                  ? Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Column(
                        children: [
                          Divider(
                            color: Colors.black,
                            thickness: 2,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(20),
                                  child: Text(
                                    'Total Cost:',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50.0)),
                                    color: themeColor),
                                child: Text(
                                  productdata.getTotalPrice() + '  \$',
                                  style: TextStyle(
                                      color: primaryColor, fontSize: 20),
                                ),
                              )
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {
                              productdata.inCartItems = [];
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ),
                              );
                            },
                            child: Text('CheckOut'),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.redAccent)),
                          )
                        ],
                      ),
                    )
                  : Container()
            ],
          ),
          bottomNavigationBar: DefulteScreenButtomBar(
            favorite: false,
            home: false,
            notification: false,
            setting: false,
          ),
        ),
      );
    });
  }
}
