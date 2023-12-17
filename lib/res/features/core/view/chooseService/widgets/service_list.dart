import 'package:flutter/material.dart';
import 'package:tarotit/res/constants/colors/colors.dart';
import 'package:tarotit/res/constants/dimensions/app_dimensions.dart';
import 'package:tarotit/res/navigator/navigator.dart';
import 'package:tarotit/res/widgets/app_bar.dart';

class ServiceListScreen extends StatelessWidget {
  final String service;
  const ServiceListScreen({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    final electricianList = [
      {
        'name': 'Imran Ahmad',
        'experience': 3,
        'rating': '5',
        'city': 'Karachi',
        'rank': 'Top 5',
      },
      {
        'name': 'Imran Ahmad',
        'experience': 3,
        'rating': '5',
        'city': 'Karachi',
        'rank': 'Top 5',
      },
      {
        'name': 'Imran Ahmad',
        'experience': 3,
        'rating': '5',
        'city': 'Karachi',
        'rank': 'Top 5',
      },
      {
        'name': 'Shahid',
        'experience': 2,
        'rating': '5',
        'city': 'Lahore',
        'rank': 'Top 20',
      },
      {
        'name': 'Mike',
        'experience': 1,
        'rating': '5',
        'city': 'Peshawar',
        'rank': 'Top 10',
      }
    ];
    return Scaffold(
      backgroundColor: codGray,
      appBar: customAppbar(onTap: () {
        popNavigator(context);
      },
      isBold: true,
      showBackButton: true,
      text: service,
      centerTitle: true),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(Dimensions.height15),
          child: Column(
            children: electricianList.asMap().entries.map((entry) {
              final index = entry.key;
      
              return Container(
                padding: EdgeInsets.only(bottom: Dimensions.height15),
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.all(Dimensions.height15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.height15)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(electricianList[index]['name'].toString(),style: TextStyle(fontSize: Dimensions.height20,
                      fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: Dimensions.height10,),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(Dimensions.height5),
                            decoration: BoxDecoration(
                              color: Colors.lightGreen.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(Dimensions.height15/2)
                            ),
                            child: Icon(Icons.cases,color: Colors.green,size: Dimensions.height15),
                          ),
                          SizedBox(width: Dimensions.height10,),
                          Text('${electricianList[index]['experience'].toString()} years experience',style: TextStyle(fontSize: Dimensions.height15),)
                        ],
                      ),
                      SizedBox(height: Dimensions.height10,),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(Dimensions.height5),
                            decoration: BoxDecoration(
                              color: Colors.pink.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(Dimensions.height15/2)
                            ),
                            child: Icon(Icons.rate_review_outlined,color: Colors.pink.shade500,size: Dimensions.height15),
                          ),
                          SizedBox(width: Dimensions.height10,),
                          Row(
                            children: List.generate(electricianList[index]['experience'] as int, (index) {
                              return Icon(Icons.star,size: Dimensions.height15,);
                            }),
                          )
                        ],
                      ),
                      SizedBox(height: Dimensions.height10,),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(Dimensions.height5),
                            decoration: BoxDecoration(
                              color: Colors.orange.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(Dimensions.height15/2)
                            ),
                            child: Icon(Icons.location_on,color: Colors.deepOrange,size: Dimensions.height15),
                          ),
                          SizedBox(width: Dimensions.height10,),
                          Text('Karachi',style: TextStyle(fontSize: Dimensions.height15),)
                        ],
                      ),
                      SizedBox(height: Dimensions.height10,),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(Dimensions.height5),
                            decoration: BoxDecoration(
                              color: Colors.blueAccent.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(Dimensions.height15/2)
                            ),
                            child: Icon(Icons.tour_sharp,color: Colors.blue,size: Dimensions.height15),
                          ),
                          SizedBox(width: Dimensions.height10,),
                          Text('Ranked in top five Electrician',style: TextStyle(fontSize: Dimensions.height15),)
                        ],
                      ),

                      SizedBox(height: Dimensions.height15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: Dimensions.height10) ,
                      child: Text('Cancel',style: TextStyle(
                    fontSize: Dimensions.height20,
                    fontWeight: FontWeight.bold,
                    color: cinnabar
                  ),),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: Dimensions.height10) ,
                      child: Text('Book now',style: TextStyle(
                    fontSize: Dimensions.height20,
                    fontWeight: FontWeight.bold,
                    color: chateauGreen
                  ),),
                      )
                    ],
                  )
                    ],
                  ),
                ),
              );
            
            }).toList(),
          )
        ),
      ),
    );
  }
}