import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopastiq/modules/product.dart';
import 'package:shopastiq/modules/products_list_data.dart';
import 'package:shopastiq/widgets/product_card.dart';

class ProductListViewer extends StatelessWidget {
  final List<Product> toggledList;
  ProductListViewer(this.toggledList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        Product product = toggledList[index];
        return ProductCard(product);
      },
      itemCount: toggledList.length,
    );
  }
}
