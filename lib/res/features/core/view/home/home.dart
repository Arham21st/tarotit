import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tarotit/res/constants/colors/colors.dart';
import 'package:tarotit/res/constants/dimensions/app_dimensions.dart';
import 'package:tarotit/res/features/core/view/bookings/bookings.dart';
import 'package:tarotit/res/navigator/navigator.dart';
import 'package:tarotit/res/widgets/app_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(vertical: Dimensions.height20,
      horizontal: Dimensions.height20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Text('Greetings Umar!',style: TextStyle(
                fontSize: Dimensions.height25,
                color: codGray,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: Dimensions.height20,),
              SizedBox(
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        pushScreen(context, const BookingScreen());
                      },
                      child: SizedBox(
                        width: Dimensions.screenWidth*0.43,
                        child: Container(
                          padding: EdgeInsets.all(Dimensions.height10),
                          decoration: BoxDecoration(
                            color: codGray,
                            borderRadius: BorderRadius.circular(Dimensions.height15)
                          ),
                          child: Column(
                            children:  [
                              Row(
                                children: [
                                  const Icon(CupertinoIcons.briefcase,color: dinGray,
                                  ),
                                  SizedBox(width: Dimensions.height10,),
                                  Text('Bookings',style: TextStyle(
                                    fontSize: Dimensions.height20,
                                    color: dinGray
                                  ),),
                                ],
                              ),
                              SizedBox(
                                height: Dimensions.height20,
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,                         
                                 children: [
                                  Text('3',style: TextStyle(
                                        fontSize: Dimensions.height20,
                                        fontWeight: FontWeight.bold,
                                        color: chateauGreen
                                      ),),
                                  SizedBox(width: Dimensions.height5,),
                    
                                      Text('active jobs',style: TextStyle(
                                        fontSize: Dimensions.height35/2,
                                        color: dinGray
                                      ),),
                                ],
                              ),
                            ],
                          ),
                        ),
                                        
                      ),
                    ),
                    SizedBox(
                      width: Dimensions.screenWidth*0.43,
                      child: Container(
                        padding: EdgeInsets.all(Dimensions.height10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(Dimensions.height15)
                        ),
                        child: Column(
                          children:  [
                            Row(
                              children: [
                                const Icon(Icons.history_edu_outlined,color: codGray,
                                ),
                                SizedBox(width: Dimensions.height10,),
                                Text('History',style: TextStyle(
                                  fontSize: Dimensions.height20,
                                  color: codGray
                                ),),
                              ],
                            ),
                            SizedBox(
                              height: Dimensions.height20,
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,                         
                               children: [
                                Text('4',style: TextStyle(
                                      fontSize: Dimensions.height20,
                                      fontWeight: FontWeight.bold,
                                      color: casablanca
                                    ),),
                                SizedBox(width: Dimensions.height5,),

                                    Text('complete jobs',style: TextStyle(
                                      fontSize: Dimensions.height35/2,
                                      color: codGray
                                    ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                                      
                    )
                  
                  ],
                ),
              ),
              SizedBox(height: Dimensions.height20,),
              SizedBox(
                      width: Dimensions.screenWidth*0.7,
                      child: Container(
                        padding: EdgeInsets.all(Dimensions.height10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(Dimensions.height15)
                        ),
                        child: Column(
                          children:  [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.bookmark_border,color: codGray,
                                size: Dimensions.height35,
                                ),
                                SizedBox(width: Dimensions.height10,),
                                Text('Rating',style: TextStyle(
                                  fontSize: Dimensions.height25,
                                  color: codGray
                                ),),
                              ],
                            ),
                            SizedBox(
                              height: Dimensions.height20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('4.0',style: TextStyle(
                                  fontSize: Dimensions.height20
                                ),),
                                SizedBox(width: Dimensions.height10,),
                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,                         
                                   children: List.generate(5, (index) {
                                     return Icon(Icons.star,);
                                   }),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                                      
                    ),
                    SizedBox(height: Dimensions.height20,),
              SizedBox(
                      width: Dimensions.screenWidth*0.7,
                      child: Container(
                        padding: EdgeInsets.all(Dimensions.height10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(Dimensions.height15)
                        ),
                        child: Column(
                          children:  [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(CupertinoIcons.layers_alt,color: codGray,
                                size: Dimensions.height35,
                                ),
                                SizedBox(width: Dimensions.height10,),
                                Text('Ranking',style: TextStyle(
                                  fontSize: Dimensions.height25,
                                  color: codGray
                                ),),
                              ],
                            ),
                            SizedBox(
                              height: Dimensions.height20,
                            ),
                            Text('You are ranked top 10 out of all electrician',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: Dimensions.height20,
                              color: codGray
                            ),)
                          ],
                        ),
                      ),
                                      
                    ),
                    SizedBox(height: Dimensions.height20,),
            ],
          ),
                SizedBox(
                  width: double.maxFinite,
                  child: AppButton(text: 'Update profile', btnColor: codGray, onTap: () {
                    
                  },),
                )
          
              

        ],
      ),
    );
  }
}