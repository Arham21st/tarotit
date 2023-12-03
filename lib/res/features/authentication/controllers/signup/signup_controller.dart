import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tarotit/res/data/repositories/userRepository/user_repository.dart';
import 'package:tarotit/res/features/authentication/controllers/firebase/firebase_controller.dart';
import 'package:tarotit/res/features/authentication/models/user/user_model.dart';
import 'package:tarotit/res/features/core/view/chooseService/choose_a_service.dart';

class SignupController extends GetxController{

  static SignupController get instance => Get.find();

  final userRepo = Get.put(UserRepository());

  


  final email = TextEditingController();
  final password = TextEditingController();
  final userName = TextEditingController();
  final phoneNo = TextEditingController();


  void signUp(String email,String password,UserModel user){

      FirebaseController.instance.createUserWithEmailAndPassword(email, password)
      .then((value) {
        createUser(user);
      }).onError((error, stackTrace){
        Get.snackbar('Error', 'Sign Up Failed');
      });



  }

  Future<void> createUser(UserModel user)async{
    await userRepo.createUser(user);
    // phoneAuthentication(user.phoneNo);
    // Get.offAll(()=>const ChooseService());
  }

  void phoneAuthentication(String phoneNo){

      FirebaseController.instance.phoneAuthentication(phoneNo);

  }

  

}