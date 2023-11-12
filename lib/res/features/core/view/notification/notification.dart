import 'package:flutter/material.dart';
import 'package:tarotit/res/constants/dimensions/app_dimensions.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('You haven\'t any notification right now.',
      style: TextStyle(
        fontSize: Dimensions.height35/2
      ),),
    );
  }
}