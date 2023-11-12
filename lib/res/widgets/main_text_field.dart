import 'package:flutter/material.dart';
import 'package:tarotit/res/constants/dimensions/app_dimensions.dart';

// ignore: must_be_immutable
class MainTextField extends StatelessWidget {
  TextInputType keyboardType;
  TextEditingController controller;
  String? hintText;
  
  MainTextField({super.key, 
  required this.keyboardType,
  required this.controller,
  this.hintText,
  
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimensions.height20*2.8,
      child: TextField(
        
        keyboardType: keyboardType,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontFamily: "Heading",fontWeight: FontWeight.w600, fontSize: Dimensions.height15,color: Colors.grey.shade500),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimensions.height10),
            borderSide: BorderSide.none,
            gapPadding: 1.0,
            
          ),
          fillColor: Colors.white,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimensions.height15),
            borderSide: BorderSide.none,
            gapPadding: 1.0,
          )
        ),
      ),
    );
  }
}