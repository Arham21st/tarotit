import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tarotit/res/constants/colors/colors.dart';
import 'package:tarotit/res/constants/dimensions/app_dimensions.dart';
import 'package:tarotit/res/constants/routes/routes.dart';
import 'package:tarotit/res/navigator/navigator.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;
  

  @override
  void initState(){
    super.initState();
    
    
    controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this)..forward();

    
    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.ease);

      

    Timer(
      const Duration(seconds: 3),
      () => replaceWithNamedNavigator(context, routeName: signupOptionRoute)
    );

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: 
            AssetImage('assets/images/opus_background.png',),
            colorFilter: ColorFilter.mode(codGray, BlendMode.hardLight)
            ),
          ),
          child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ScaleTransition(scale: animation,
              child: Center(child: Image.asset("assets/images/opus_logo.png",
              color: persimmon,
              width: Dimensions.height25*5,),),),
            ],
          ),
        ),
      ),
      
    );
  }
}