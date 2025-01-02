import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shoppingapp/models/Product.dart';

class RemoteServices{
  static var client = http.Client();   //client ko static coz baar baar remote connection to server would be a bad practise so shouldn;t be used


  static Future<List<Product>> fetchProducts() async {
    var response =  await client.get(Uri.parse('https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline'));

    if(response.statusCode==200){
      var jsonString =response.body;
      // return Product.fromJson(jsonString);
      return productFromJson(jsonString);

    }else{
      // return null;
      throw Exception('Failed to load products: ${response.statusCode}');
    }




  }


}