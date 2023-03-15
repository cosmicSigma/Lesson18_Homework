import 'dart:convert';
import 'class.dart';
import 'network.dart';

void main () {
  final Network http = Network();
  http.get(http.baseUrl, http.apiTodos, 1).then((value) => parseJsonTodo(value));
  http.close();
}

void parseJsonTodo(String data) {
  Map<String, dynamic> json = jsonDecode(data);
  Todo todo = Todo.fromJson(json);
  print(todo.userId);
  print(todo.id);
  print(todo.title);
  print(todo.completed);
  print(todo);
}