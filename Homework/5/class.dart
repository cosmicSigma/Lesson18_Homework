class Quotes {
  late int id;
  late String quote;
  late String author;


  Quotes(this.id, this.quote, this.author);

  Quotes.fromJson(Map<String, dynamic> json)  {
    id = json['id'];
    quote = json['quote'];
    author = json['author'];
  }

  @override
  String toString() {
    return 'Quotes{id: $id, quote: $quote, author: $author}';
  }
}