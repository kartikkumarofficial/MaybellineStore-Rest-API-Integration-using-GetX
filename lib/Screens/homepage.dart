
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shoppingapp/Controllers/product_controller.dart';
import 'package:get/get.dart';
import 'package:shoppingapp/Controllers/product_controller.dart';

class homePage extends StatefulWidget {
  final ProductController productController= Get.put(ProductController());
  homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Shopping App",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 26),),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.view_list_rounded)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.grid_view))
        ],
      ),
      body: Column(
        children: [

          SizedBox(
            height: 10,
          ),


          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 7,right: 7),
              child: Obx(()=>GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns in the grid
                  crossAxisSpacing: 8.0, // Horizontal spacing between items
                  mainAxisSpacing: 8.0, // Vertical spacing between items
                ),
                itemCount: ProductController.productList.length, // Total number of items to display
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 100,
                    width: 100,
                    color: Colors.red,
                    child: Center(child: Text('Item $index')),
                  );
                },
              ),)
            ),
          )












        ],
      )
    );
  }
}
