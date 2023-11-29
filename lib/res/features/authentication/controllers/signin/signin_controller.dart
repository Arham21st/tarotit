import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tarotit/res/data/repositories/userRepository/user_repository.dart';
import 'package:tarotit/res/features/authentication/controllers/firebase/firebase_controller.dart';

class SignInController extends GetxController{

  static SignInController get instance => Get.find();

  final userRepo = Get.put(UserRepository());

  final email = TextEditingController();
  final password = TextEditingController();


  void signIn(String email,String password){

      FirebaseController.instance.loginUserWithEmailAndPassword(email, password);

  }

}