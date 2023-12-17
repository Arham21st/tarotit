import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tarotit/res/constants/colors/colors.dart';
import 'package:tarotit/res/constants/dimensions/app_dimensions.dart';
import 'package:tarotit/res/features/core/view/bookings/bookings.dart';
import 'package:tarotit/res/widgets/app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: codGray,
      appBar: customAppbar(
        isBold: true,
        centerTitle: true,
        text: 'Greetings Umar!', onTap: () {
        
      },),
      body: Container(
        height: Dimensions.screenHeight*0.8,
      padding: EdgeInsets.all( Dimensions.height20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              
              Get.to(()=>const BookingScreen());
            },
            child: SizedBox(
            height: Dimensions.screenHeight*0.15,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: Dimensions.height15,
              horizontal: Dimensions.height30),
                decoration: BoxDecoration(
                  color: persimmon,
                  borderRadius: BorderRadius.circular(Dimensions.height15/2)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Icon(CupertinoIcons.briefcase,color: dinGray,
                        size: Dimensions.height30,
                        ),
                        SizedBox(width: Dimensions.height10,),
                        Text('Bookings',style: TextStyle(
                          fontSize: Dimensions.height25,
                          color: dinGray
                        ),),
                      ],
                    ),
                    Text.rich(
                TextSpan(
                  style: TextStyle(
                      fontSize: Dimensions.height35/2,
                      color: Colors.white
                    ),
                  children: const [
                    TextSpan(text: 'You have '),
                    TextSpan(
                      text: '4 ',
                      style: TextStyle(
                        color: emerald,
                        fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: 'active jobs right now.'),
                  ],
                ),
              ),
                  ],
                ),
              ),
                              
            ),
          
          ),
          
          SizedBox(
            height: Dimensions.screenHeight*0.15,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: Dimensions.height15,
              horizontal: Dimensions.height30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Dimensions.height15/2)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:  [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.history_edu_outlined,color: codGray,
                      size: Dimensions.height30,
                      ),
                      SizedBox(width: Dimensions.height10,),
                      Text('History',style: TextStyle(
                        fontSize: Dimensions.height25,
                        color: codGray
                      ),),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Text.rich(
                    textAlign: TextAlign.center,
                TextSpan(
                  style: TextStyle(
                              fontSize: Dimensions.height35/2,
                              color: codGray
                            ),
                  children: const [
                    TextSpan(text: 'You have successfully completed '),
                    TextSpan(
                      text: '4 ',
                      style: TextStyle(
                        color: casablanca,
                        fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: 'jobs'),
                  ],
                ),
              ),
                ],
              ),
            ),
                            
          ),
          SizedBox(
                  height: Dimensions.screenHeight*0.15,

                  child: Container(
                    padding: EdgeInsets.all(Dimensions.height15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Dimensions.height15/2)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:  [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.bookmark_border,color: codGray,
                            size: Dimensions.height30,
                            ),
                            SizedBox(width: Dimensions.height10,),
                            Text('Rating',style: TextStyle(
                              fontSize: Dimensions.height25,
                              color: codGray
                            ),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('4.0',style: TextStyle(
                              color: codGray,
                              fontSize: Dimensions.height35/2
                            ),),
                            SizedBox(width: Dimensions.height10,),
                            Row(
                               children: List.generate(4, (index) {
                                 return const Icon(Icons.star,
                                 color: codGray,);
                               }),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                                  
                ),
          SizedBox(
                  height: Dimensions.screenHeight*0.15,
                  child: Container(
                    padding: EdgeInsets.all(Dimensions.height15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Dimensions.height15/2)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:  [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(CupertinoIcons.layers_alt,color: codGray,
                            size: Dimensions.height30,
                            ),
                            SizedBox(width: Dimensions.height10,),
                            Text('Ranking',style: TextStyle(
                              fontSize: Dimensions.height25,
                              color: codGray
                            ),),
                          ],
                        ),
                        Text.rich(
                    textAlign: TextAlign.center,
                TextSpan(
                  style: TextStyle(
                              fontSize: Dimensions.height35/2,
                              color: codGray
                            ),
                  children:  [
                    const TextSpan(text: 'You are ranked '),
                    const TextSpan(
                      text: 'top 10 ',
                      style: TextStyle(
                        color: emerald,
                        fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(text: 'out of all '),
                    TextSpan(
                      text: 'electricians'.toUpperCase(),
                      style: const TextStyle(
                        color: emerald,
                        fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
                      ],
                    ),
                  ),
                                  
                ),
        ],
      ),
    )
  ,
    );
  }
}