import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppingapp/Controllers/product_controller.dart';
import 'package:shoppingapp/Screens/product_tile.dart';

class homePage extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping App"),
      ),
      body: Obx(() {
        if (productController.productList.isEmpty) {
          return Center(child: CircularProgressIndicator());
        }
        return GridView.builder(
          itemCount: productController.productList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            return ProductTile(productController.productList[index]);
          },
        );
      }),
    );
  }
}
