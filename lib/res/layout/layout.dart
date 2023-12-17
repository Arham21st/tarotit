import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tarotit/res/constants/colors/colors.dart';
import 'package:tarotit/res/constants/dimensions/app_dimensions.dart';
import 'package:tarotit/res/features/core/view/bookings/bookings.dart';
import 'package:tarotit/res/features/core/view/chooseService/choose_a_service.dart';
import 'package:tarotit/res/features/core/view/home/home.dart';
import 'package:tarotit/res/features/core/view/notification/notification.dart';
import 'package:tarotit/res/features/core/view/profile/profile.dart';
import 'package:tarotit/res/widgets/bottom_nav_item.dart';

class LayoutWithNavbar extends StatefulWidget {
   LayoutWithNavbar({
    required this.user,
    super.key,
  });
  bool? user=true;
  @override
  State<LayoutWithNavbar> createState() => _LayoutWithNavbarState();
}

class _LayoutWithNavbarState extends State<LayoutWithNavbar> {
  int currentIndex = 0;
  bool toggle = false;
     String location = 'Home';
  int _calculateSelectedIndex() {
    if (location == 'Home') {
      return 0;
    }

    if (location == 'Notification') {
      return 1;
    }

    if (location == 'Profile') {
      return 2;
    }

    return 3;
  }

  void _onItemTapped(
    int index,
  ) {
    switch (index) {
      case 0:
        setState(() {
          toggle = false;
          currentIndex = 0;
        });
        break;
      case 1:
        setState(() {
          toggle = false;
          currentIndex = 1;
        });
        break;
      case 2:
        setState(() {
          toggle = false;
          currentIndex = 2;
        });
        break;
    }
  }

  List<String> sPnavs = [
    'Home',
    'Notification',
    'Profile',
  ];

  List<String> uNavs = [
    'Home',
    'Booking',
    'Profile',
  ];
 
  List<IconData> uActiveIcons = [
    Icons.home_outlined,
    Icons.edit_document,
    Icons.person_outline_outlined
    
  ];
  List<IconData> spActiveIcons = [
    Icons.home_outlined,
    Icons.notifications_none_outlined,
    Icons.person_outline_outlined
    
  ];
  List<BottomNavigationBarItem> _buildNavList() {
    return widget.user!? uNavs.asMap().entries.map((e) {
      return BottomNavigationBarItem(
        label: '',
        icon: BottomNavItem(
          currentIndex: currentIndex,
          icon: Icon(
            uActiveIcons[e.key],
            color: currentIndex == e.key
                ? persimmon
                : Colors.grey.shade500,
            size: Dimensions.height20,
          ),
          name: e.value,
          index: e.key,
        ),
      );
    }).toList():
    sPnavs.asMap().entries.map((e) {
      return BottomNavigationBarItem(
        label: '',
        icon: BottomNavItem(
          currentIndex: currentIndex,
          icon: Icon(
            spActiveIcons[e.key],
            color: currentIndex == e.key
                ? persimmon
                : Colors.grey.shade500,
            size: Dimensions.height20,
          ),
          name: e.value,
          index: e.key,
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      widget.user!?
      currentIndex == 0?
      const ChooseService():
      currentIndex==1?
       const BookingScreen()
      : const ProfilePage():
      currentIndex == 0?
      const HomeScreen():
      currentIndex==1?
       NotificationScreen()
      : const ProfilePage(),
      extendBody: false,
      primary: true,
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: codGray.withOpacity(0.9),
          showSelectedLabels: false,
          currentIndex: _calculateSelectedIndex(),
          onTap: _onItemTapped,
          selectedFontSize: Dimensions.height25/2,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: _buildNavList()),
    );
  }
}