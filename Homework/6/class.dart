import '../../../Lesson13/samples/1.dart';

class Animal {
  late String image;
  late String fact;

  Animal(this.image, this.fact);

  Animal.fromJson(Map<String, dynamic> json){
    image = json['image'];
    fact = json['fact'];
  }

  @override
  String toString() {
    return "Animal{image: $image, fact:$fact}";
  }
}