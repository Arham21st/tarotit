import 'package:flutter/material.dart';
import 'package:tarotit/res/constants/colors/colors.dart';
import 'package:tarotit/res/constants/dimensions/app_dimensions.dart';
import 'package:tarotit/res/constants/routes/routes.dart';
import 'package:tarotit/res/features/authentication/view/login/login_screen.dart';
import 'package:tarotit/res/features/authentication/view/welcome/welcome_screen.dart';
import 'package:tarotit/res/features/core/view/bookings/bookings.dart';
import 'package:tarotit/res/navigator/navigator.dart';
import 'package:tarotit/res/widgets/app_button.dart';
import 'package:tarotit/res/widgets/app_input.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppColors.background,
      backgroundColor:Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              // height: Dimensions.screenHeight*0.95,
        
            padding: EdgeInsets.symmetric(vertical: Dimensions.height20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(height: Dimensions.height20,),
                       Image(image: const AssetImage("assets/images/opus_logo.png"),
                       color: persimmon,height: Dimensions.height20*7),
                    SizedBox(height: Dimensions.height20,),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: Dimensions.height20),
                          child:  Text( "Sign Up",style: TextStyle(fontSize: Dimensions.height25),)
                        )
                      ],
                    ),
                    SizedBox(height: Dimensions.height10),
                    const AppInput(placeHolder: 'Umar sufiyan',
                    label: 'Username',),
                    const AppInput(placeHolder: 'example@gmail.com',
                    label: 'Email',),
                    const AppInput(placeHolder: '03001234567',
                    label: 'Phone No',),
                    const AppInput(placeHolder: 'Password',
                    obscureText: true,
                    label: 'Password',),
                    const AppInput(placeHolder: 'Karachi',
                    label: 'City',),
                    const AppInput(placeHolder: 'Location',
                    label: 'Location',
                    postfixIcon: Icon(Icons.location_on_outlined)),
                    SizedBox(height: Dimensions.height10,),
                    SizedBox(
                      width: Dimensions.screenWidth,
                      child: AppButton(
                        
                        text: 'Sign up',btnColor: codGray, onTap: () {
                          replaceWithNamedNavigator(context, routeName: chooseServiceRoute);
                        },),
                    ),
                  ],
                ),
                // Align(
                //   alignment: Alignment.bottomCenter,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       const Text('Already have an account?',style: TextStyle(color: codGray),),
                //       GestureDetector(
                //         onTap: () {
                //           pushScreen(context, const SplashScreen());
                //         },
                //         child: Padding(
                //           padding: EdgeInsets.all(Dimensions.height10),
                //           child: const Text('Login',style: TextStyle(color: codGray,fontWeight: FontWeight.bold),),
                //         ),
                //       )
                //     ],
                //   ),
                // )
              ],
            ),
          ),
        )),
    );
 
  }
}