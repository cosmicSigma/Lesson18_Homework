import 'dart:convert';
import 'class.dart';
import 'network.dart';

void main () {
  final Network http = Network();
  http.get(http.baseUrl, http.apiAnimu).then((value) => parseJsonAnimu(value));
  http.close();
}

void parseJsonAnimu(String data) {
  Map<String, dynamic> json = jsonDecode(data);
  Animu animu = Animu.fromJson(json);
  print(animu.link);
  print(animu);
}