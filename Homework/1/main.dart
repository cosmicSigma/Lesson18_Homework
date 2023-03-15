import 'dart:convert';
import 'class.dart';
import 'network.dart';

void main () {
  final Network http = Network();
  http.get(http.baseUrl, http.apiComments, 1).then((value) => parseJsonComments(value));
  http.close();
}

void parseJsonComments(String data) {
  Map<String, dynamic> json = jsonDecode(data);
  Comment comment = Comment.fromJson(json);
  print(comment.postId);
  print(comment.id);
  print(comment.name);
  print(comment.email);
  print(comment.body);
  print(comment);
}