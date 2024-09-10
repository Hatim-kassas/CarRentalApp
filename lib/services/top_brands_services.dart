import 'package:car_rantal_application/models/top_brands_class.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TopBrandsServices {
  final _firestore = FirebaseFirestore.instance;

  Future getAll() async {
    var respons = await _firestore.collection('topBrands').get();
    List<TopBrandsClass> brands =
        respons.docs.map((e) => TopBrandsClass.fromJson(e.data())).toList();
    return brands;
  }

  Future getOne(String id) async {
    var response = await _firestore.collection('topBrands').doc(id).get();
    TopBrandsClass brands =
        TopBrandsClass.fromJson(response.data() as Map<String, dynamic>);
    return brands;
  }

  Future addData(TopBrandsClass addBrands) async {
    await _firestore.collection('topBrands').add(addBrands.toJson());
  }

  Future update(TopBrandsClass brands) async {
    await _firestore
        .collection('topBrands')
        .doc(brands.id)
        .update(brands.toJson());
  }

  Future delete(TopBrandsClass brands) async {
    await _firestore.collection('topBrands').doc(brands.id).delete();
  }
}
