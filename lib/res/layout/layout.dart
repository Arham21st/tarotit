import 'package:flutter/material.dart';
import 'package:tarotit/res/constants/colors/colors.dart';
import 'package:tarotit/res/constants/dimensions/app_dimensions.dart';
import 'package:tarotit/res/features/core/view/home/home.dart';
import 'package:tarotit/res/features/core/view/notification/notification.dart';
import 'package:tarotit/res/features/core/view/profile/profile.dart';
import 'package:tarotit/res/widgets/app_bar.dart';
import 'package:tarotit/res/widgets/bottom_nav_item.dart';

class LayoutWithNavbar extends StatefulWidget {
  const LayoutWithNavbar({
    super.key,
  });

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

    // if (location == 'Industry') {
    //   return 3;
    // }

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
      // case 3:
      //   setState(() {
      //     toggle = false;
      //     currentIndex = 3;
      //   });
      //   break;
      // case 4:
      //   setState(() {
      //     toggle = false;
      //     currentIndex = 4;
      //   });
    }
  }

  List<String> navs = [
    'Home',
    'Notification',
    'Profile',
    // 'Industry',
  ];
  List<String> inActiveIcons = [
    // homeBlue,
    // programmeBlue,
    // floorPlaneBlue,
    // industryBlue,
    // moreBlue,
  ];
  List<IconData> activeIcons = [
    Icons.home_outlined,
    Icons.notifications_none,
    Icons.person_outline_outlined
    
  ];
  List<BottomNavigationBarItem> _buildNavList() {
    return navs.asMap().entries.map((e) {
      return BottomNavigationBarItem(
        label: '',
        icon: BottomNavItem(
          currentIndex: currentIndex,
          icon: Icon(
            activeIcons[e.key],
            color: currentIndex == e.key
                ? codGray
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
      backgroundColor: bottombarScafoldColor,
      appBar: customAppbar(text: currentIndex==0?'Home':currentIndex==1?'Notification':'Profile', onTap: () {
        
      },
      centerTitle: true,
      isBold: true,

      ),
      body: currentIndex == 0?
      const HomeScreen():
      currentIndex==1?
      const NotificationScreen()
      : const ProfilePage(),
          // ? const HomeScreen()
          // : currentIndex == 1
          //     ? const ProgrammeScreen()
          //     : currentIndex == 2
          //         ? const FloorPlan()
          //         : const IndustryList(),
      extendBody: false,
      primary: true,
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
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