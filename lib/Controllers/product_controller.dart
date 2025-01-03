import 'package:get/get.dart';
import 'package:shoppingapp/Services/remote_services.dart';
import 'package:shoppingapp/models/Product.dart';

class ProductController extends GetxController {
  var isLoading=true.obs;
  var productList = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    isLoading(true);
    var products = await RemoteServices.fetchProducts();
    if (products != null) {
      productList.value = products;
    }
    isLoading(false);
  }

  void addProduct(Product product) {
    productList.add(product);
  }

  void removeProduct(Product product) {
    productList.remove(product);
  }
}
