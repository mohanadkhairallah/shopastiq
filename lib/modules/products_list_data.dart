import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shopastiq/modules/product.dart';

class ProductsListData extends ChangeNotifier {
  List<Product> allProductsList = [];
  List<Product> jeweleryList = [];
  List<Product> electronicsList = [];
  List<Product> menClothList = [];
  List<Product> womenClothList = [];
  List<Product> favoriteList = [];

  void getProductList() async {
    if (allProductsList.length == 0) {
      print('api called!!');
      String httpLink = 'https://fakestoreapi.com/products/';
      var response = await Dio().get(httpLink);
      try {
        for (var item in response.data) {
          Product addingProduct = Product();
          addingProduct.iD = item['id'];
          addingProduct.title = item['title'];
          addingProduct.price = item['price'].toString();
          addingProduct.description = item['description'];
          addingProduct.category = item['category'];
          addingProduct.image = item['image'];
          addingProduct.isFavorite = false;
          allProductsList.add(addingProduct);
        }
        for (Product item in allProductsList) {
          switch (item.category) {
            case ('jewelery'):
              jeweleryList.add(item);
              break;
            case ('electronics'):
              electronicsList.add(item);
              break;
            case ("men's clothing"):
              menClothList.add(item);
              break;
            case ("women's clothing"):
              womenClothList.add(item);
          }
        }
        notifyListeners();
      } catch (e) {
        print(e);
        return null;
      }
    }
  }

  void addToFavorite(Product product) {
    for (Product item in favoriteList) {
      if (item == product) {
        return null;
      }
    }
    product.isFavorite = true;
    favoriteList.add(product);
    notifyListeners();
  }

  void removeFromFavorite(Product product) {
    product.isFavorite = false;
    favoriteList.remove(product);
    notifyListeners();
  }
}
