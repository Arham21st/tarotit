import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sizer/sizer.dart';
import 'package:tarotit/res/features/authentication/view/login/login_screen.dart';
import 'package:tarotit/res/features/authentication/view/signup/signup_screen.dart';
import 'package:tarotit/res/features/authentication/view/signupAsSP/signup_as_sp.dart';
import 'package:tarotit/res/features/authentication/view/signupOption/signup_option.dart';
import 'package:tarotit/res/features/core/view/chooseService/choose_a_service.dart';
import 'package:tarotit/res/features/core/view/chooseService/widgets/service_list.dart';
import 'package:tarotit/res/layout/layout.dart';

import 'constants/routes/routes.dart';
import 'features/authentication/view/welcome/welcome_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Sizer(builder: (_, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'SIRS2023',
          initialRoute: '/',
          routes: {
            indexRoute: (ctx) => const SplashScreen(),
            signupOptionRoute: (ctx) => const SignupOptionScreen(),
            signupRoute: (ctx) => const SignupScreen(),
            signupAsSpRoute: (ctx) => const SignupAsServiceProvider(),
            loginRoute: (ctx) => const LoginPage(),
            layoutRoute: (ctx) => const LayoutWithNavbar(),
            chooseServiceRoute: (ctx) => const ChooseService(),
            serviceListRoute: (ctx) => const ServiceListScreen(service: ''),
            // industryRoute: (ctx) => const IndustryList(),
          },
        );
      }),
    );
  }
}