class Car {
  late String id, image, title, date;
  late int price, stars, review;

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
    price = json['price'];
    review = json['review'];
    stars = json['stars'];
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
