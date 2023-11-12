import 'package:flutter/material.dart';
import 'package:tarotit/res/constants/dimensions/app_dimensions.dart';
import 'package:tarotit/res/navigator/navigator.dart';
import 'package:tarotit/res/widgets/app_bar.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bookingsList = [
      {
        'spName': 'Imran Ahmad',
        'phNo': '+92 300 1234567',
        'serviceType': 'Fan',
        'rank': 'Top 5',
      },
      {
        'spName': 'Shahid',
        'phNo': '+92 300 1234567',
        'serviceType': 'Fan',
        'rank': 'Top 20',
      },
      {
        'spName': 'Mike',
        'phNo': '+92 300 1234567',
        'serviceType': 'Fan',
        'rank': 'Top 10',
      }
    ];
    return Scaffold(
      appBar: customAppbar(text: 'Bookings', onTap: () {
        popNavigator(context);
      },
      centerTitle: true,
      isBold: true,
      showBackButton: true
      ),
      body: Column(
        children: bookingsList.asMap().entries.map((entry) {
          final index = entry.key;
          return Container(
            padding: EdgeInsets.symmetric(vertical: Dimensions.height10,
            horizontal: Dimensions.height20),
            child: Container(
              width: Dimensions.screenWidth,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Dimensions.height10)
              ),
              padding: EdgeInsets.all(Dimensions.height15),
              child: Column(
                children: [
                  // Text('Details'),
                  SizedBox(height: Dimensions.height10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Name:',style: TextStyle(
                    fontSize: Dimensions.height15,
                    fontWeight: FontWeight.normal
                  ),),
                      Text(bookingsList[index]['spName'].toString(),style: TextStyle(
                    fontSize: Dimensions.height15,
                    fontWeight: FontWeight.bold
                  ),),
                    ],
                  ),
                  SizedBox(height: Dimensions.height10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Contact:',style: TextStyle(
                    fontSize: Dimensions.height15,
                    fontWeight: FontWeight.normal
                  ),),
                      Text(bookingsList[index]['phNo'].toString(),style: TextStyle(
                    fontSize: Dimensions.height15,
                    fontWeight: FontWeight.bold
                  ),),
                    ],
                  ),
                  SizedBox(height: Dimensions.height10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Service Type:',style: TextStyle(
                    fontSize: Dimensions.height15,
                    fontWeight: FontWeight.normal
                  ),),
                      Text(bookingsList[index]['serviceType'].toString(),style: TextStyle(
                    fontSize: Dimensions.height15,
                    fontWeight: FontWeight.bold
                  ),),
                    ],
                  ),
                  SizedBox(height: Dimensions.height10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: Dimensions.height10) ,
                      child: Text('Contact',style: TextStyle(
                    fontSize: Dimensions.height15,
                    fontWeight: FontWeight.bold,
                    color: Colors.purpleAccent
                  ),),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: Dimensions.height10) ,
                      child: Text('Confirm Booking',style: TextStyle(
                    fontSize: Dimensions.height15,
                    fontWeight: FontWeight.bold,
                    color: Colors.purpleAccent
                  ),),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}