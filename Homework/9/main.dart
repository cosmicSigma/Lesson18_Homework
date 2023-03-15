import 'dart:convert';
import 'class.dart';
import 'network.dart';

void main () {
  final Network http = Network();
  http.get(http.baseUrl, http.apiRandom_Joke).then((value) => parseJsonRandomJoke(value));
  http.close();
}

void parseJsonRandomJoke(String data) {
  Map<String, dynamic> json = jsonDecode(data);
  RandomJoke randomJoke = RandomJoke.fromJson(json);
  print(randomJoke.type);
  print(randomJoke.setup);
  print(randomJoke.punchline);
  print(randomJoke.id);
  print(randomJoke);
}