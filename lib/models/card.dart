class Car {
  late String id, image, title, date;
  late double price, review, stars;

  Car({
    required this.id,
    required this.image,
    required this.title,
    required this.date,
    required this.price,
    required this.review,
    required this.stars,
  });

  Car.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    title = json['title'];
    date = json['date'];
    price = json['price']?.toDouble();
    review = json['review']?.toDouble();
    stars = (json['stars'] is int)
        ? (json['stars'] as int).toDouble()
        : json['stars'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "image": image,
      "title": title,
      "date": date,
      "price": price,
      "review": review,
      "stars": stars,
    };
  }
}
