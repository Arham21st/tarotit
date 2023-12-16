import 'package:flutter/material.dart';
import 'package:tarotit/res/constants/dimensions/app_dimensions.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    required this.text,
 this.textColor,
    required this.btnColor,
    required this.onTap,
    this.loading=false,
    this.padding=false,
    super.key,
  });
  final String text;
  final Color? textColor;
  final Color btnColor;
  final VoidCallback onTap;
  final bool loading;
  final bool? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  padding!? EdgeInsets.symmetric(horizontal:  Dimensions.height10)  :EdgeInsets.symmetric(horizontal:  Dimensions.height20),
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: Dimensions.height15)),
          overlayColor: MaterialStatePropertyAll(Colors.black.withOpacity(0.1)),
          elevation: const MaterialStatePropertyAll(0),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                Dimensions.height15/2,
              ),
            ),
          ),
          backgroundColor: MaterialStatePropertyAll(btnColor),
        ),
        onPressed: onTap,
        child: !loading? Text(
          text,
          style: TextStyle(
            color: textColor??Colors.white,
            // fontFamily: interSemibold,
            fontSize: Dimensions.height15,
          ),
        ):const CircularProgressIndicator(),
      ),
    );
  }
}