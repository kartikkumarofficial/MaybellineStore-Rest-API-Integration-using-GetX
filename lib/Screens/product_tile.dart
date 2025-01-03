import 'package:flutter/material.dart';
import 'package:shoppingapp/models/Product.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2 ,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 168,
                width: double.infinity,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Image.network(
                  product.imageLink,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 8),
              Text(
                product.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style:
                TextStyle(fontFamily: 'avenir', fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 8),
              if (product.rating != null)
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    Text(product.rating.toString()),
                  ],
                ),
              SizedBox(height: 8),
              Text(
                '\$${product.price}',
                style: TextStyle(fontSize: 24, fontFamily: 'avenir'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
