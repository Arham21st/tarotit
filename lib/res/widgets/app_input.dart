import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tarotit/res/constants/colors/colors.dart';
import 'package:tarotit/res/constants/dimensions/app_dimensions.dart';

class AppInput extends StatelessWidget {
  const AppInput({
    required this.placeHolder,
    this.error = '',
    this.label = '',
    this.keyboardType,
    this.controller,
    this.showPasswordIcon = false,
    this.onTap,
    this.obscureText = false,
    this.isAutoValidate = false,
    this.validator,
    this.enabled,
    this.horizontalMargin = 20,
    this.maxLines = 1,
    this.maxLenght = 100,
    this.prefixIcon,
    this.postfixIcon,
    this.onChanged,
    this.textarea = true,
    this.backColor = athensGray,
    super.key,
  });

  final String placeHolder;
  final String? label;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final bool? showPasswordIcon;
  final VoidCallback? onTap;
  final bool? obscureText;
  final bool isAutoValidate;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final bool? enabled;
  final double? horizontalMargin;
  final int? maxLines;
  final int? maxLenght;
  final Widget? prefixIcon;
  final Widget? postfixIcon;
  final String error;
  final bool textarea;
  final Color? backColor;

  @override
  Widget build(BuildContext context) {
    final customInputDecoration = InputDecoration(
      prefixIcon: prefixIcon,
      counterText: '',
      filled: true,
      fillColor: backColor,
      hintText: placeHolder,
      iconColor: const Color(0xFFD4DDE5),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      border: const OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: athensGray),
        borderRadius: BorderRadius.circular(
          Dimensions.height15/2,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: athensGray,
        ),
        borderRadius: BorderRadius.circular(
          Dimensions.height15/2,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.red,
        ),
        borderRadius: BorderRadius.circular(
          Dimensions.height15/2,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.red,
        ),
        borderRadius: BorderRadius.circular(
          Dimensions.height15/2,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(
          Dimensions.height15/2,
        ),
      ),
      hintStyle: textarea
          ? TextStyle(
              color: const Color(0xFF8D99AE),
              fontSize: Dimensions.height25/2,
              fontFamily: 'Raleway',
            )
          : TextStyle(
              color: silver,
              fontSize: Dimensions.height10,
              fontFamily: 'Nunito',
            ),
      suffixIcon: showPasswordIcon!
          ? InkWell(
              onTap: onTap,
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  Dimensions.height5,
                  Dimensions.height5,
                  Dimensions.height20,
                  Dimensions.height5,
                ),
                child: obscureText!
                    ? const Icon(
                        Icons.remove_red_eye_outlined,
                        color: Color(0xFFCACACA),
                      )
                    : const Icon(
                        FontAwesomeIcons.eyeSlash,
                        size: 18,
                        color: Color(0xFFCACACA),
                      ),
              ),
            )
          : postfixIcon,
      errorText: error.isEmpty ? null : error,
      errorStyle: TextStyle(
        color: Colors.red,
        fontSize: Dimensions.height25/2,
        // fontFamily: interRegular,
      ),
    );

    return Container(
      margin: EdgeInsets.fromLTRB(
        horizontalMargin!,
        0,
        horizontalMargin!,
        Dimensions.height20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (label! == '')
            Container()
          else
            Container(
              margin: const EdgeInsets.only(left: 0),
              child: Text(
                label!,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: Dimensions.height25/2,
                  // fontFamily: ralewaySemibold,
                ),
              ),
            ),
          // const Gap(gap: 8),
          SizedBox(height: Dimensions.height10,),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.white,
            ),
            child: TextFormField(
              style: TextStyle(
                color: const Color(0xFF214465),
                fontSize: Dimensions.height25/2,
                // fontFamily: interSemibold,
              ),
              keyboardType: keyboardType,
              controller: controller,
              onChanged: onChanged,
              decoration: customInputDecoration,
              obscureText: obscureText!,
              validator: validator,
              // autovalidateMode: isAutoValidate!
              //     ? AutovalidateMode.onUserInteraction
              //     : AutovalidateMode.disabled,

              enabled: enabled,
              maxLines: maxLines,
              maxLength: maxLenght,
            ),
          ),
        ],
      ),
    );
  }
}