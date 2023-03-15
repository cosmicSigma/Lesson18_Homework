class Animu {
  late String link;
  Animu(this.link);

  Animu.fromJson(Map<String, dynamic> json) {
    link = json['link'];
  }

  @override
  String toString() {
    return "Animu{link: $link}";
  }
}