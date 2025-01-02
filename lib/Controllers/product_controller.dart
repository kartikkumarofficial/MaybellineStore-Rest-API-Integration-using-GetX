import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppingapp/models/Product.dart';

class ProductController extends GetxController {

  var productList = <Product>[].obs;

  void fetchProducts() async {
    

  }

  // Example method to add a product
  void addProduct(Product product) {
    productList.add(product);
  }

  // Example method to remove a product
  void removeProduct(Product product) {
    productList.remove(product);
  }
}
