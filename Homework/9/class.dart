class RandomJoke {
  late String type;
  late String setup;
  late String punchline;
  late int id;

  RandomJoke(this.type, this.setup, this.punchline, this.id);

  RandomJoke.fromJson(Map<String, dynamic> json)  {
    type = json['type'];
    setup = json['setup'];
    punchline = json['punchline'];
    id = json['id'];
  }

  @override
  String toString() {
    return 'RandomJoke{type: $type, setup: $setup, punchline: $punchline, id: $id}';
  }
}