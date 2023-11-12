import 'package:flutter/material.dart';
import 'package:tarotit/res/constants/dimensions/app_dimensions.dart';
import 'package:tarotit/res/features/core/view/chooseService/widgets/service_list.dart';
import 'package:tarotit/res/features/core/view/chooseService/widgets/service_widget.dart';
import 'package:tarotit/res/navigator/navigator.dart';
import 'package:tarotit/res/widgets/app_bar.dart';

class ChooseService extends StatefulWidget {
  const ChooseService({super.key});

  @override
  State<ChooseService> createState() => _ChooseServiceState();
}

class _ChooseServiceState extends State<ChooseService> {
  @override
  Widget build(BuildContext context) {
    final serviceData =[
      {'service_image':'assets/images/carpenter.png','service_title':'Carpenter','service_color':Colors.purple.withOpacity(0.15)},
      {'service_image':'assets/images/electrician.png','service_title':'Electrician','service_color':Colors.yellow.withOpacity(0.15)},
      {'service_image':'assets/images/plumber.png','service_title':'Plumber','service_color':Colors.lightGreen.withOpacity(0.15)},
      {'service_image':'assets/images/gardener.png','service_title':'Gardener','service_color':Colors.cyanAccent.withOpacity(0.15)},
      {'service_image':'assets/images/masonry.png','service_title':'Masonry','service_color':Colors.pink.withOpacity(0.15)},
      {'service_image':'assets/images/painter.png','service_title':'Painter','service_color':Colors.orange.withOpacity(0.15)},
      {'service_image':'assets/images/actechnician.png','service_title':'AC Technician','service_color':Colors.blueAccent.withOpacity(0.15)},
      {'service_image':'assets/images/cctv.png','service_title':'CCTV','service_color':Colors.pinkAccent.withOpacity(0.25)},
    ] ;
    return Scaffold(
      appBar: customAppbar(onTap: () {
        
      },
      isBold: true,
      // showBackButton: true,
      text: 'Choose a service',
      centerTitle: true),
      body: Column(children: [
        // Container(
        //   padding: EdgeInsets.symmetric(vertical: Dimensions.height20),
        //   child: Text('Choose a service',style: TextStyle(
        //     fontWeight: FontWeight.bold,
        //     fontSize: Dimensions.height20
        //   ),),
        // ),
          Container(
            padding: EdgeInsets.symmetric(vertical: Dimensions.height20,),
            child: Expanded(
              child: SizedBox(
                height: Dimensions.screenHeight*0.75,
                child: GridView.builder(
                      itemCount: serviceData.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        
                childAspectRatio: 0.9,
                crossAxisCount: 3), itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      pushScreen(context,  ServiceListScreen(service: serviceData[index]['service_title'].toString(),));
                    },
                    child: ServiceWidget(serviceData: serviceData[index]));
                },),
              ),
            ),
          )
      ],),
    );
  }
}