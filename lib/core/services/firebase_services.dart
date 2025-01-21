import 'package:cloud_firestore/cloud_firestore.dart';
import '../../model/register.dart';

class FirebaseServices {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> saveRegisterData(String collection, Register register) async {
    try {
      await _firestore.collection(collection).add(register.toJson());
      print("Register data saved successfully!");
    } catch (e) {
      print("Error saving register data: $e");
    }
  }

  Future<List<Register>> getRegisterData(String collection) async {
    try {
      QuerySnapshot snapshot = await _firestore.collection(collection).get();
      return snapshot.docs
          .map((doc) => Register.fromJson(doc.data() as Map<String, dynamic>)) // Use fromJson()
          .toList();
    } catch (e) {
      print("Error fetching register data: $e");
      return [];
    }
  }
}