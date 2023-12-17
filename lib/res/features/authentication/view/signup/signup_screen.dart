import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tarotit/res/constants/colors/colors.dart';
import 'package:tarotit/res/constants/dimensions/app_dimensions.dart';
import 'package:tarotit/res/features/authentication/controllers/signup/signup_controller.dart';
import 'package:tarotit/res/features/authentication/models/user/user_model.dart';
import 'package:tarotit/res/features/authentication/view/login/login_screen.dart';
import 'package:tarotit/res/widgets/app_button.dart';
import 'package:tarotit/res/widgets/app_input.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  final firestore = FirebaseFirestore.instance.collection('Users');

  bool loading =false;
  @override
  Widget build(BuildContext context) {

    final controller = Get.put(SignupController());

    final _formKey = GlobalKey<FormState>();

    

  String id = DateTime.now().millisecondsSinceEpoch.toString();



    return Scaffold(
      //backgroundColor: AppColors.background,
      backgroundColor:codGray,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              height: Dimensions.screenHeight*0.95,
        
            padding: EdgeInsets.symmetric(vertical: Dimensions.height20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(height: Dimensions.height20,),
                         Image(image: const AssetImage("assets/images/opus_logo.png"),
                         color: persimmon,height: Dimensions.height20*7),
                      SizedBox(height: Dimensions.height20,),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: Dimensions.height20),
                            child:  Text( "Sign Up",style: TextStyle(fontSize: Dimensions.height25,
                            color: persimmon)
                            ,)
                          )
                        ],
                      ),
                      SizedBox(height: Dimensions.height10),
                       AppInput(placeHolder: 'Umar sufiyan',
                      label: 'Username',
                      controller: controller.userName,
                      ),
                       AppInput(placeHolder: 'example@gmail.com',
                      label: 'Email',
                      controller: controller.email,
                      ),
                       AppInput(placeHolder: '03001234567',
                      label: 'Phone No',
                      controller: controller.phoneNo,
                      ),
                       AppInput(placeHolder: 'Password',
                      obscureText: true,
                      label: 'Password',
                      controller: controller.password,),
                      // const AppInput(placeHolder: 'Karachi',
                      // label: 'City',),
                      // const AppInput(placeHolder: 'Location',
                      // label: 'Location',
                      // postfixIcon: Icon(Icons.location_on_outlined)),
                      SizedBox(height: Dimensions.height10,),
                      SizedBox(
                        width: Dimensions.screenWidth,
                        child: AppButton(
                          loading: loading,
                          
                          
                          text: 'Sign up',btnColor: persimmon, onTap: () {

                            setState(() {
                              loading= true;
                            });

                            if(_formKey.currentState!.validate()){
                              // firestore.doc(id).set({
                              //   'id' : id,
                              //   'email' : controller.email.value.text.trim(),
                              //   'user_name' : controller.userName.value.text.trim(),
                              //   'phone_no' : controller.phoneNo.value.text.trim(),
                              //   'password' : controller.password.value.text.trim(),
                              // }).then((value) {
                              //   setState(() {
                              //     loading = false;
                              //   });
                              //   SignupController.instance.signUp(
                              //   controller.email.value.text.trim(), 
                              //   controller.password.value.text.trim());
                              // }).onError((error, stackTrace) {
                              //   setState(() {
                              //     loading = false;
                              //   });
                              //   Get.snackbar('Error', error.toString());

                              // });
                              


                            final user = UserModel(
                    id : id,
                    userName: controller.userName.text.trim(), 
                    email: controller.email.text.trim(), 
                    phoneNo: controller.phoneNo.text.trim(), 
                    password: controller.password.text.trim());
                            SignupController.instance.signUp(controller.email.text.trim(), controller.password.text.trim(), user);
                            }
                            // Get.to(const ChooseService());
                          },),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an account?',style: TextStyle(color: codGray),),
                      GestureDetector(
                        onTap: () {
                          Get.to(()=>const LoginPage());
                        },
                        child: Padding(
                          padding: EdgeInsets.all(Dimensions.height10),
                          child: const Text('Login',style: TextStyle(color: codGray,fontWeight: FontWeight.bold),),
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