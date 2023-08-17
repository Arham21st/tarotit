import 'package:flutter/material.dart';
import '../../../../constants/colors/colors.dart';
import '../../../../constants/dimensions/app_dimensions.dart';
import '../../../../constants/image_strings/image_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: customColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(Dimensions.height30),
            child:   Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: Dimensions.height20,),
                Text("Tarotit",style: TextStyle(fontSize: Dimensions.height20*3,fontWeight: FontWeight.bold ),),
                SizedBox(height: Dimensions.height30,),
                

                Text("Login or Create Free Account",
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,),
                SizedBox(height: Dimensions.height5,),

                Icon(Icons.lock,size: Dimensions.height30,color: const Color.fromARGB(255, 92, 8, 60).withOpacity(0.7),),

                SizedBox(height: Dimensions.height5,),


                Text("Please create an account to access the platform. If you already have an account, please use the same credentials. ",style: TextStyle(fontSize: Dimensions.height20,
                color: const Color.fromARGB(255, 92, 8, 60).withOpacity(0.5),),textAlign: TextAlign.center,),

                SizedBox(height: Dimensions.height20,),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.height10),
                  height: Dimensions.height20*3,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 92, 8, 60).withOpacity(0.7),
                    borderRadius: BorderRadius.circular(Dimensions.height10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sign in with Email",style: TextStyle(fontSize: Dimensions.height30,color: Colors.white.withOpacity(0.8)),),
                      Icon(Icons.email_rounded,size: Dimensions.height20*2,color: Colors.white,),
                    ],
                  ),
                ),
                SizedBox(height: Dimensions.height15,),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.height10),
                  height: Dimensions.height20*3,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 92, 8, 60).withOpacity(0.7),
                    borderRadius: BorderRadius.circular(Dimensions.height10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sign in with Apple",style: TextStyle(fontSize: Dimensions.height30,color: Colors.white.withOpacity(0.8)),),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: Dimensions.height10),
                        child: const Image(image: AssetImage(apple),color: Colors.white,),
                      )
                    ],
                  ),
                ),

                SizedBox(height: Dimensions.height15,),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.height10),
                  height: Dimensions.height20*3,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 92, 8, 60).withOpacity(0.7),
                    borderRadius: BorderRadius.circular(Dimensions.height10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sign in with Google",style: TextStyle(fontSize: Dimensions.height30,color: Colors.white.withOpacity(0.8)),),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: Dimensions.height10),
                        child: const Image(image: AssetImage(google2),color: Colors.white,),
                      )
                    ],
                  ),
                ),

                SizedBox(height: Dimensions.height20*2,),

                Text("We protect your information in accordance with our privacy policy. ",style: TextStyle(fontSize: Dimensions.height20,
                color: const Color.fromARGB(255, 92, 8, 60).withOpacity(0.5),),textAlign: TextAlign.center,),

                

                
              ],
            )),
        )
      ),
    );
  }

}