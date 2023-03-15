import 'dart:convert';
import 'class.dart';
import 'network.dart';

void main () {
  final Network http = Network();
  http.get(http.baseUrl, http.apiProducts, 1).then((value) => parseJsonProducts(value));
  http.close();
}

void parseJsonProducts(String data) {
  Map<String, dynamic> json = jsonDecode(data);
  Products products = Products.fromJson(json);
  print(products.id);
  print(products.title);
  print(products.description);
  print(products.price);
  print(products.discountPercentage);
  print(products.rating);
  print(products.stock);
  print(products.brand);
  print(products.category);
  print(products.thumbnail);
  print(products.images);
  print(products);
}