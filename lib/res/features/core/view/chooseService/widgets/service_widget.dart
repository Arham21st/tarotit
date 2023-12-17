import 'package:flutter/material.dart';
import 'package:tarotit/res/constants/colors/colors.dart';
import 'package:tarotit/res/constants/dimensions/app_dimensions.dart';

class ServiceWidget extends StatelessWidget {
  final Map<String, dynamic> serviceData;
  const ServiceWidget({super.key, required this.serviceData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: Dimensions.height10),
      child: Column(
        children: [
          Container(
    padding: EdgeInsets.all(Dimensions.height15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(Dimensions.height15/2),
    color: serviceData['service_color'],
    ),
    child: Image(image: AssetImage(serviceData['service_image'],),height: Dimensions.height20*4,width: Dimensions.height20*3,),
          ),
          SizedBox(height: Dimensions.height5,),
          Text(serviceData['service_title'],style: TextStyle(
            color: serviceData['text_color'],
            fontSize: Dimensions.height15,
            fontWeight: FontWeight.bold
          ),)
        ],
      ),
    );
  }
}