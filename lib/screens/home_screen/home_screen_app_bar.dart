import 'package:flutter/material.dart';
import 'package:shopastiq/screens/cart_screen.dart';

class HomeScreenAppBar extends StatelessWidget {
  final String cartCount;
  HomeScreenAppBar({this.cartCount});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50.0),
        ),
        color: Color(0xff297DAE),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Shopastiq',
            style: TextStyle(
                fontFamily: 'Lobster', fontSize: 40, color: Colors.white),
          ),
          Container(
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartScreen(),
                  ),
                );
              },
              child: Stack(
                children: <Widget>[
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 30,
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Stack(
                      children: <Widget>[
                        Icon(
                          Icons.brightness_1,
                          size: 20.0,
                          color: Color(0xff297DAE),
                        ),
                        Positioned(
                          top: 4.0,
                          right: 5.0,
                          child: Center(
                            child: Text(
                              cartCount,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
