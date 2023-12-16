import 'package:get/get.dart';
import 'package:tarotit/res/features/authentication/view/signupOption/signup_option.dart';

class FadeInAnimationController extends GetxController{

  static FadeInAnimationController get find => Get.find();

  RxBool animate = false.obs;

  Future startSplashAnimation()async{

    await Future.delayed(const Duration(milliseconds: 1000));

    animate.value=true;

    await Future.delayed(const Duration(milliseconds: 5000));

    animate.value=false;

    await Future.delayed(const Duration(milliseconds: 3000));

    Get.offAll(()=> const SigninSignupOption());

  }


Future startAnimation()async{

    await Future.delayed(const Duration(milliseconds: 1000));

    animate.value=true;

  }

}