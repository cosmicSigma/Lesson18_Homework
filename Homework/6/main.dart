import 'dart:convert';
import 'class.dart';
import 'network.dart';

void main () {
  final Network http = Network();
  http.get(http.baseUrl, http.apiAnimal).then((value) => parseJsonAnimal(value));
  http.close();
}

void parseJsonAnimal(String data) {
  Map<String, dynamic> json = jsonDecode(data);
  Animal animal = Animal.fromJson(json);
  print(animal.image);
  print(animal.fact);
  print(animal);
}