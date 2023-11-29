import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:tarotit/res/features/authentication/models/user/user_model.dart';

class UserRepository extends GetxController{

  static UserRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;



  createUser(UserModel user) async {
    await _db.collection("Users").doc().set(user.toJson()).whenComplete(
      () => Get.snackbar('Success', 'Your account has been created.',snackPosition: SnackPosition.BOTTOM)).
      catchError((error, stackTrace){
        Get.snackbar('Error', 'Something went wrong. Try again.',snackPosition: SnackPosition.BOTTOM);
      });
  }

  Future <UserModel> getUserDetails(String email)async{
    final snapshot = await _db.collection("User").where("Email", isEqualTo: email).get();
    final userData = snapshot.docs.map((e) => UserModel.fromSnapshot(e)).single;
    return userData;
  }

  Future<List<UserModel>> allUsers()async{
    final snapshot = await _db.collection("User").get();
    final userData = snapshot.docs.map((e) => UserModel.fromSnapshot(e)).toList();
    return userData;
  }
}