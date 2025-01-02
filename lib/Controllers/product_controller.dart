import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppingapp/Services/remote_services.dart';
import 'package:shoppingapp/models/Product.dart';

class ProductController extends GetxController {

  var productList = <Product>[].obs;
  @override

  void fetchProducts() async {
    var products = await RemoteServices.fetchProducts();
    if(products!=null){
      productList.value = products;

    }



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
