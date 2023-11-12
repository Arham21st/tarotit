import 'package:flutter/material.dart';
import 'package:tarotit/res/constants/colors/colors.dart';
import 'package:tarotit/res/constants/dimensions/app_dimensions.dart';


class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    required this.currentIndex,
    required this.index,
    required this.icon,
    required this.name,
    super.key,
  });

  final Widget icon;
  final String name;
  final int currentIndex;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.transparent,
          width: Dimensions.height25,
          height: Dimensions.height25,
          child: icon,
        ),
        SizedBox(height: Dimensions.height5,),
        Text(
          name,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: currentIndex == index
                  ? codGray
                  : Colors.grey.shade500,
              fontSize: Dimensions.height10,
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}