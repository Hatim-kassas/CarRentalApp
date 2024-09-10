class TopBrandsClass {
  late String id, image, name;

  TopBrandsClass({required this.id, required this.image, required this.name});

  TopBrandsClass.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "image": image,
      "name": name,
    };
  }
}
