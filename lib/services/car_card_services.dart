import 'package:car_rantal_application/models/card.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CarCardServices {
  final _firestore = FirebaseFirestore.instance;

  Future getAll() async {
    var response = await _firestore.collection('cards').get();
    List<Car> cards =
        response.docs.map((e) => Car.fromJson(e.data())).toList();
    return cards;
  }

  Future getOne(String id) async {
    var response = await _firestore.collection('cards').doc(id).get();
    Car card = Car.fromJson(response.data() as Map<String, dynamic>);
    return card;
  }

  Future addData(Car card) async {
    await _firestore.collection('cards').add(card.toJson());
  }

  Future update(Car card) async {
    await _firestore.collection('cards').doc(card.id).update(card.toJson());
  }

  Future delete(Car card) async {
    await _firestore.collection('cards').doc(card.id).delete();
  }
}
