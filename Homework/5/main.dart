import 'dart:convert';
import 'class.dart';
import 'network.dart';

void main () {
  final Network http = Network();
  http.get(http.baseUrl, http.apiQuotes, 1).then((value) => parseJsonQuotes(value));
  http.close();
}

void parseJsonQuotes(String data) {
  Map<String, dynamic> json = jsonDecode(data);
  Quotes quotes = Quotes.fromJson(json);
  print(quotes.id);
  print(quotes.quote);
  print(quotes.author);
  print(quotes);
}