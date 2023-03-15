class Products {
  late int id;
  late String title;
  late String description;
  late num price;
  late num discountPercentage;
  late num rating;
  late num stock;
  late String brand;
  late String category;
  late String thumbnail;
  late var images;

  // todo:images ni list qiganda xato chiqvotti

  Products(this.id, this.title, this.description, this.price,
      this.discountPercentage, this.rating, this.stock, this.brand,
      this.category, this.thumbnail, this.images);

  Products.fromJson(Map<String, dynamic> json)  {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    price = json['price'];
    discountPercentage = json['discountPercentage'];
    rating = json['rating'];
    stock = json['stock'];
    brand = json['brand'];
    category = json['category'];
    thumbnail = json['thumbnail'];
    images = json['image'];
  }

  @override
  String toString() {
    return 'Products{id: $id, title: $title, description: $description, price: $price, discountPercentage: $discountPercentage, rating: $rating, stock: $stock, brand: $brand, category: $category, thumbnail: $thumbnail, images: $images}';
  }


}