import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tarotit/res/constants/colors/colors.dart';
import 'package:tarotit/res/constants/dimensions/app_dimensions.dart';
import 'package:tarotit/res/constants/image_strings/image_strings.dart';
import 'package:tarotit/res/constants/text_strings/text_strings.dart';
import 'package:tarotit/res/features/authentication/view/login/login_screen.dart';
import 'package:tarotit/res/features/authentication/view/signup/signup_screen.dart';
import 'package:tarotit/res/features/authentication/view/signupAsSP/signup_as_sp.dart';
import 'package:tarotit/res/features/authentication/view/signupOption/widgets/fade_in_animation/animation_design.dart';
import 'package:tarotit/res/features/authentication/view/signupOption/widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:tarotit/res/features/authentication/view/signupOption/widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:tarotit/res/widgets/app_button.dart';

class SigninSignupOption extends StatelessWidget {
  const SigninSignupOption({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();
    
    return SafeArea(
      child: Scaffold(
        backgroundColor: codGray,
        body: Stack(
          children: [
            FadeInAnimationWidget(
              durationInMs: 1500,
              animate: AnimationPosition(
                bottomAfter: 0,
                bottombefore: -100,
                leftAfter: 0,
                leftBefore: 0,
                rightAfter: 0,
                rightBefore: 0,
                topAfter: 0,
                topBefore: 0,
              ),
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: Dimensions.height30
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      // height: Dimensions.height20,
                    ),
                    Hero(
                      tag: "welcome-image-tag",
                      child: Image(image: const AssetImage(logo),height: Dimensions.height20*15,color: persimmon,)),
                    //  Container(
                    //   padding: EdgeInsets.symmetric(horizontal: Dimensions.height20),
                    //    child: Column(
                    //     children: [
                    //        Text(tWelcomeTitle,style: TextStyle(
                    //         fontSize: Dimensions.height20,
                    //         color: persimmon
                    //       ),),
                    //       SizedBox(
                    //         height: Dimensions.height10,
                    //       ),
                    //       Text(tWelcomeSubTitle,
                    //       textAlign: TextAlign.center,
                    //       style: TextStyle(
                    //         fontSize: Dimensions.height20,
                    //         color: persimmon
                    //       ),),
                    //     ],
                    //                    ),
                    //  ),
                    
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: Dimensions.height20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: AppButton(
                        padding: true,
                                  btnColor: persimmon,
                                  onTap: () {
                                  Get.to(()=>const LoginPage());
                                },
                                 text: tLogin.toUpperCase()),
                              ),
                              // SizedBox(width: Dimensions.height10,),
                              Expanded(
                                child: AppButton(
                                  padding: true,
                                  btnColor: persimmon,
                                  onTap: () {
                                  Get.to(()=>const SignupScreen());
                                }, 
                                 text: tSignup.toUpperCase()),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.height20*3,
                        ),
                              GestureDetector(
                                onTap: () {
                                  Get.to(()=>const SignupAsServiceProvider());
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('SIGNUP',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: Dimensions.height15,
                                      color: Colors.white
                                    ),),
                                    SizedBox(
                                      width: Dimensions.height10,
                                    ),
                                    Text('AS A SERVICE PROVIDER',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: Dimensions.height15,
                                      color: persimmon
                                    ),),
                                  ],
                                ),
                              ),
                      ],
                    ),
                  
                  ],
                ),
              ),
            ),
          ],
        ),
      )
      );
  }
}