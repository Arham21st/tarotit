import 'package:flutter/material.dart';
import 'package:tarotit/res/constants/colors/colors.dart';
import 'package:tarotit/res/constants/dimensions/app_dimensions.dart';
import 'package:tarotit/res/widgets/app_bar.dart';

class NotificationScreen extends StatelessWidget {
   NotificationScreen({Key? key});

  // Replace this with your actual notification data
  final List<Map<String,String>> notifications = [
    {
      'title': 'Booking',
      'text' : 'You have a new booking '
    },
    {
      'title': 'Booking',
      'text' : 'You have a new booking '
    },
    {
      'title': 'Booking',
      'text' : 'You have a new booking '
    },
    {
      'title': 'Booking',
      'text' : 'You have a new booking '
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: codGray,
      appBar: customAppbar(
        isBold: true,
        showBackButton: false,
        centerTitle: true,
        text: 'Notifications',
        onTap: () {
          // Handle app bar tap
        },
      ),
      body: notifications.isEmpty
          ? Center(
              child: Text(
                'You don\'t have any notifications right now.',
                style: TextStyle(
                  color: alto,
                  fontSize: Dimensions.height35 / 2,
                ),
              ),
            )
          : ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                return Card(
                  color: persimmon, // Replace with your preferred color
                  elevation: 4,
                  margin: EdgeInsets.symmetric(vertical: Dimensions.height10, horizontal: Dimensions.height10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: Dimensions.height15/2,horizontal: Dimensions.height15),
                    title: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: codGray,
                          child: Text(notifications[index].values.first.characters.first,
                          style: TextStyle(
                            color: alto,
                            fontWeight: FontWeight.bold,
                            fontSize: Dimensions.height20
                          ),
                          ),
                        ),
                        SizedBox(
                          width: Dimensions.height10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              notifications[index].values.first,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: Dimensions.height35 / 2,
                              ),
                            ),
                            SizedBox(
                              height: Dimensions.height10,
                            ),
                            Text(
                              notifications[index].values.last,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: Dimensions.height35 / 2,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // Add more customization or actions for each notification
                  ),
                );}),
    );
  }
}
