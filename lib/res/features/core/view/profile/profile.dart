import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tarotit/res/constants/colors/colors.dart';
import 'package:tarotit/res/constants/dimensions/app_dimensions.dart';
import 'package:tarotit/res/widgets/app_bar.dart';
import 'package:tarotit/res/widgets/app_button.dart';
import 'package:tarotit/res/widgets/app_input.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // final UserApi _userApi = UserApi();

  TextEditingController _firstNameEditingController = TextEditingController();
  TextEditingController _lastNameEditingController = TextEditingController();
  TextEditingController _emailEditingController = TextEditingController();
  TextEditingController _passwordEditingController = TextEditingController();
  TextEditingController _confirmPassEditingController = TextEditingController();

  // @override
  // void initState() {
  //   UserModel user = Provider.of<UserModel>(context, listen: false);
  //   _firstNameEditingController = TextEditingController(text: user.firstName);
  //   _lastNameEditingController = TextEditingController(text: user.lastName);
  //   _emailEditingController = TextEditingController(text: user.email);
  //   _passwordEditingController = TextEditingController(text: user.password);
  //   _phoneEditingController = TextEditingController(text: user.phone);
  //   _confirmPassEditingController = TextEditingController(text: '');
  //   super.initState();
  // }

  // void onUpdateProfile() async {
  //   UserModel user = Provider.of<UserModel>(context, listen: false);

  //   String firstName = _firstNameEditingController.value.text;
  //   String lastName = _lastNameEditingController.value.text;
  //   String email = _emailEditingController.value.text;
  //   String password = _passwordEditingController.value.text;
  //   String phone = _phoneEditingController.value.text;
  //   String confirmPassword = _confirmPassEditingController.value.text;
  //   if (email.isNotEmpty && firstName.isNotEmpty && lastName.isNotEmpty) {
  //     if (confirmPassword == password) {
  //       Map body = {
  //         "UserId": user.id.toString(),
  //         "FirstName": firstName,
  //         "LastName": lastName,
  //         "Password": password,
  //         "Phone": phone,
  //         "Username": email,
  //         "UserPassword": password,
  //       };
  //       _userApi.updateProfile(body).then((value) {
  //         if (value["userProfile"]) {
  //           user.setFirstName(firstName);
  //           user.setLastName(lastName);
  //           user.setPhone(phone);
  //           user.setPassword(password);
  //         }
  //       });
  //       return;
  //     }
  //     showErrorPopup(context, "Password and Confirm Password should be same");
  //     return;
  //   }
  //   showErrorPopup(context, "Please enter valid details");
  // }

  @override
  Widget build(BuildContext context) {
    // UserModel user = Provider.of<UserModel>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppbar(
        showBackButton: true,
        centerTitle: true,
        text: 'Profile', onTap: () {
        Get.back();
      },),
      body: SingleChildScrollView(
        child: Container(
          height: Dimensions.screenHeight*0.9,
          // color: lightGray.withOpacity(0.3),
          padding: EdgeInsets.symmetric(
              vertical: Dimensions.height20,
              horizontal: Dimensions.height10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                height: Dimensions.height20,
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: Dimensions.height45,
                    backgroundColor: Colors.white,
                    backgroundImage: const AssetImage('assets/images/default-dp.png'),
                  ),
                  SizedBox(height: Dimensions.height10,),
                  Text('Umar Sufiyan',
                  style: TextStyle(
                    fontSize: Dimensions.height35/2,
                    fontWeight: FontWeight.w600
                  ),),
                  SizedBox(height: Dimensions.height10,),
                  Text('umarsufiyan123@gmail.com',
                  style: TextStyle(
                    fontSize: Dimensions.height15,
                    fontWeight: FontWeight.w500
                  ),)
                ],
              ),
              Column(
                children: [
                  SizedBox(height: Dimensions.height25*2),
                  AppInput(
                    placeHolder: 'Choose a professsion',
                    controller: _emailEditingController,
                    label: 'Profession',
                  ),
                  AppInput(
                    placeHolder: 'Choose your expertise',
                    controller: _passwordEditingController,
                    label: 'Skills',
                    // obscureText: true,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: AppInput(
                          placeHolder: '1000 pkr',
                          controller: _firstNameEditingController,
                          label: 'Base rate',
                        ),
                      ),
                      Expanded(
                        child: AppInput(
                          placeHolder: '0-5 years',
                          controller: _lastNameEditingController,
                          label: 'Experience',
                        ),
                      ),
                    ],
                  ),
                  AppInput(
                    placeHolder: 'Ex:Karachi',
                    controller: _confirmPassEditingController,
                    label: 'City',
                  ),
                ],
              ),

              SizedBox(
                width: double.maxFinite,
                child: AppButton(text: 'Save changes', btnColor: codGray, onTap:() {
                  
                },),
              )
              // AppInput(
              //   placeHolder: 'Phone Number Password',
              //   controller: _phoneEditingController,
              //   label: 'Phone Number Password',
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //     ElevatedButton(
              //       style: ElevatedButton.styleFrom(
              //         backgroundColor: const Color(0xff0A2D4B),
              //         shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(
              //               Dimensions.height10), // <-- Radius
              //         ),
              //       ),
              //       onPressed: () {
              //         // pushScreen(context, const QRCodePage());
              //       },
              //       child: Container(
              //         width: SizeHelper.getDeviceWidth(30),
              //         alignment: Alignment.center,
              //         padding: EdgeInsets.symmetric(
              //             vertical: Dimensions.height10),
              //         child: const Text("QR CODE"),
              //       ),
              //     ),
              //     ElevatedButton(
              //       style: ElevatedButton.styleFrom(
              //         backgroundColor: const Color(0xff0A2D4B),
              //         shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(
              //               Dimensions.height10), // <-- Radius
              //         ),
              //       ),
              //       onPressed: onUpdateProfile,
              //       child: Container(
              //         width: SizeHelper.getDeviceWidth(30),
              //         alignment: Alignment.center,
              //         padding: EdgeInsets.symmetric(
              //             vertical: Dimensions.height10),
              //         child: const Text("SAVE INFO"),
              //       ),
              //     ),
              //   ],
              // ),
              // const Gap(gap: 10),
              // ElevatedButton(
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: const Color(0xff0A2D4B),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(
              //           Dimensions.height10), // <-- Radius
              //     ),
              //   ),
              //   onPressed: () {
              //     clearAllFromStorage();
              //     replaceWithNamedNavigator(context, routeName: indexRoute);
              //   },
              //   child: Container(
              //     width: SizeHelper.getDeviceWidth(77),
              //     alignment: Alignment.center,
              //     padding: const EdgeInsets.symmetric(vertical: 10),
              //     child: const Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Icon(Icons.logout),
              //         Gap(
              //           gap: 5,
              //           axis: 'x',
              //         ),
              //         Text("Log Out"),
              //       ],
              //     ),
              //   ),
              // ),
            
            ],
          ),
        ),
      )
   ,
    )
    ;
  }
}