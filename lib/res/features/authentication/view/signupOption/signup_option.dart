import 'package:flutter/material.dart';
import 'package:tarotit/res/constants/colors/colors.dart';
import 'package:tarotit/res/constants/dimensions/app_dimensions.dart';
import 'package:tarotit/res/constants/routes/routes.dart';
import 'package:tarotit/res/features/authentication/view/login/login_screen.dart';
import 'package:tarotit/res/features/authentication/view/signup/signup_screen.dart';
import 'package:tarotit/res/features/authentication/view/signupAsSP/signup_as_sp.dart';
import 'package:tarotit/res/navigator/navigator.dart';
import 'package:tarotit/res/widgets/app_button.dart';

class SignupOptionScreen extends StatelessWidget {
  const SignupOptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(bottom: Dimensions.height20,
          top: Dimensions.height20*8),
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/opus_background.png',),
              colorFilter: ColorFilter.mode(codGray, BlendMode.hardLight))
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(child: Image.asset("assets/images/opus_logo.png",
                color: gallery,
                width: Dimensions.height25*5,),),
            //  SizedBox(height: Dimensions.height20*3,),
             Column(
               children: [
                 SizedBox(
                  width: Dimensions.screenWidth*0.5,
                   child: AppButton(text: 'Sign up', btnColor: gallery, textColor: codGray, onTap: () {
                     pushScreen(context, const SignupScreen());
                   },),
                 ),
                 SizedBox(
                  height: Dimensions.height20,
                 ),
                 SizedBox(
                  width: Dimensions.screenWidth*0.5,
                   child: AppButton(text: 'Login', btnColor: gallery, textColor: codGray, onTap: () {
                     pushNavigator(context, routeName: loginRoute, widget: const LoginPage());
                   },),
                 ),
               ],
             ) ,
      
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    pushScreen(context, const SignupAsServiceProvider());
                  },
                  child: Container(
                    padding: EdgeInsets.all(Dimensions.height10),
                    child: Text('SIGNUP',
                    style: TextStyle(
                      fontSize: Dimensions.height15,
                      fontWeight: FontWeight.bold,
                      color: persimmon
                    ),),
                  ),
                ),
                Text('AS A SERVICE PROVIDER',
                style: TextStyle(
                    fontSize: Dimensions.height15,
                    fontWeight: FontWeight.w600,
                    color: linkWater
                  ),)
              ],
             )  
            ],
          ),
        ),
      ),
    );
  }
}