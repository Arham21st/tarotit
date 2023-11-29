import 'dart:async';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tarotit/res/features/authentication/view/login/login_screen.dart';
import 'package:tarotit/res/features/authentication/view/signup/signup_screen.dart';

class AuthenticationRepository extends GetxController{

  static AuthenticationRepository get instance => Get.find();
  final deviceStorage = GetStorage();


  @override
  void onReady(){


    Timer(
      const Duration(seconds: 3),
      () {
    screenRedirect();
      }
    );

  }

  screenRedirect(){
    deviceStorage.writeIfNull('isFirstTime', true);
    deviceStorage.read('isFirstTime')!=true?Get.offAll(()=> const LoginPage()):Get.offAll(()=>const SignupScreen());

  }


}