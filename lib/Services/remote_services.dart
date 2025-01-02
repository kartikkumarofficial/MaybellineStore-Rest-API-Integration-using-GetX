import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shoppingapp/models/Product.dart';

class RemoteServices{
  static var client = http.Client();   //client ko static coz baar baar remote connection to server would be a bad practise so shouldn;t be used


  static Future<List<Product>> fetchProducts() async {
    var response =  await client.get(Uri.parse('https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline'));




  }


}