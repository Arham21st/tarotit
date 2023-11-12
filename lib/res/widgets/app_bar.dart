import 'package:flutter/material.dart';
import 'package:tarotit/res/constants/colors/colors.dart';
import 'package:tarotit/res/constants/dimensions/app_dimensions.dart';

PreferredSizeWidget customAppbar({
  required String text,
  bool? showBackButton = false,
  bool? isBold = false,
  bool? centerTitle = false,
  required VoidCallback? onTap,
}) {
  return AppBar(
    centerTitle: centerTitle,
    elevation: 0,
    backgroundColor: codGray,
    leading: showBackButton!
        ? GestureDetector(
            onTap: onTap,
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: Dimensions.height25,
            ),
          )
        : Container(),
    title: Text(
      text,
      style: TextStyle(
        fontSize: Dimensions.height20,
          color: Colors.white,
          fontWeight: isBold! ? FontWeight.bold : FontWeight.normal),
    ),
    titleSpacing: showBackButton ? 0 : -40,
   
  );
}