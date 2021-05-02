import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopastiq/modules/product.dart';
import 'package:shopastiq/modules/products_list_data.dart';

class ProductScreen extends StatelessWidget {
  final Product product;
  ProductScreen(this.product);
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductsListData>(builder: (context, productdata, child) {
      return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                // height: 150,
                width: double.infinity,
                padding: EdgeInsets.only(left: 25, right: 25, top: 20),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(50.0)),
                    color: Color(0xff297DAE)),
                child: Text(
                  product.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Lobster', color: Colors.white, fontSize: 30),
                ),
              ),
              Container(
                height: 250,
                child: Image(
                  image: NetworkImage(product.image),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 25, right: 25, top: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0),
                      ),
                      color: Color(0xff297DAE)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        product.description,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Price: ${product.price}  \$',
                        style: TextStyle(fontSize: 20, color: Colors.yellow),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            child: Text('back'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          ElevatedButton(
                            child: Text('Add to Cart'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          product.isFavorite == false
                              ? ElevatedButton(
                                  child: Text('Add to fav'),
                                  onPressed: () {
                                    productdata.addToFavorite(product);
                                    Navigator.pop(context);
                                  },
                                )
                              : ElevatedButton(
                                  child: Text('Remove From fav'),
                                  onPressed: () {
                                    productdata.removeFromFavorite(product);
                                    Navigator.pop(context);
                                  },
                                )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
