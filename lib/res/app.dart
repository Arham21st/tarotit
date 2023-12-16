import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sizer/sizer.dart';
import 'features/authentication/view/welcome/welcome_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Sizer(builder: (_, orientation, deviceType) {
        return const GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'OPUS',
          // initialRoute: '/',
          home: SplashScreen()
          // routes: {
          //   indexRoute: (ctx) => const SplashScreen(),
          //   signupOptionRoute: (ctx) => const SignupOptionScreen(),
          //   signupRoute: (ctx) => const SignupScreen(),
          //   signupAsSpRoute: (ctx) => const SignupAsServiceProvider(),
          //   loginRoute: (ctx) => const LoginPage(),
          //   layoutRoute: (ctx) => const LayoutWithNavbar(),
          //   chooseServiceRoute: (ctx) => const ChooseService(),
          //   serviceListRoute: (ctx) => const ServiceListScreen(service: ''),
          //   // industryRoute: (ctx) => const IndustryList(),
          // },
        );
      }),
    );
  }
}