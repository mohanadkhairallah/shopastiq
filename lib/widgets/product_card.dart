import 'package:flutter/material.dart';
import 'package:shopastiq/const.dart';
import 'package:shopastiq/modules/product.dart';
import 'package:shopastiq/screens/product_screen.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  ProductCard(this.product);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            SizedBox(
              width: 100,
              height: 150,
              child: Image(
                image: NetworkImage(product.image),
              ),
            ),
            Flexible(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      product.title,
                      style: TextStyle(color: themeColor, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          color: themeColor),
                      child: Text(
                        product.price.toString() + '  \$',
                        style: TextStyle(color: primaryColor, fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductScreen(product),
          ),
        );
      },
    );
  }
}
