// ignore_for_file: file_names

class ClassSliderTopBrands {
  String nameOfCar;
  String logoCar;

  ClassSliderTopBrands({required this.logoCar, required this.nameOfCar});

  factory ClassSliderTopBrands.fromJson(Map<String, dynamic> json) {
    return ClassSliderTopBrands(
        logoCar: json["logoCar"], nameOfCar: json["nameOfCar"]);
  }
}
