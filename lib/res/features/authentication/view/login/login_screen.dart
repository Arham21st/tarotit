import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tarotit/res/constants/colors/colors.dart';
import 'package:tarotit/res/constants/dimensions/app_dimensions.dart';
import 'package:tarotit/res/features/authentication/controllers/firebase/firebase_controller.dart';
import 'package:tarotit/res/features/authentication/controllers/signin/signin_controller.dart';
import 'package:tarotit/res/features/authentication/view/signup/signup_screen.dart';
import 'package:tarotit/res/features/core/view/chooseService/choose_a_service.dart';
import 'package:tarotit/res/widgets/app_button.dart';
import 'package:tarotit/res/widgets/app_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final controller= Get.put(SignInController());
    return Scaffold(
      //backgroundColor: AppColors.background,
      backgroundColor:Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: Dimensions.screenHeight*0.95,
            padding: EdgeInsets.symmetric(vertical: Dimensions.height20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(height: Dimensions.height20*3,),
                     Image(image: const AssetImage("assets/images/opus_logo.png"),
                     color: persimmon,height: Dimensions.height20*7),
                    SizedBox(height: Dimensions.height20*2,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: EdgeInsets.only(left: Dimensions.height20),
                        child:  Text( "Login",style: TextStyle(fontSize: Dimensions.height25),)
                      ),
                    ),
                    SizedBox(height: Dimensions.height10),
                    const AppInput(placeHolder: 'Email'),
                    SizedBox(height: Dimensions.height10,),
                    const AppInput(placeHolder: 'Password',
                    obscureText: true,),
                    SizedBox(height: Dimensions.height10,),
                    SizedBox(
                      width: Dimensions.screenWidth,
                      child: AppButton(
                        text: 'Login', btnColor: codGray, onTap: () {
                          Get.offAll(()=>const ChooseService());
                      },),
                    ),
                  ],
                ),
          
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t have an account?',style: TextStyle(color: codGray),),
                      GestureDetector(
                        onTap: () {
                          SignInController.instance.signIn(controller.email.text.trim(), 
                          controller.password.text.trim());
                          // Get.off(()=> const SignupScreen());
                        },
                        child: Padding(
                          padding: EdgeInsets.all(Dimensions.height10),
                          child: const Text('Sign up',
                          style: TextStyle(
                            color: codGray,
                            fontWeight: FontWeight.bold),),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )),
    );
  }
}