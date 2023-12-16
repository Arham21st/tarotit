import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tarotit/firebase_options.dart';
import 'package:tarotit/res/app.dart';
import 'package:tarotit/res/features/authentication/controllers/firebase/firebase_controller.dart';

void main() async{
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();

  // FlutterNativeSplash.preserve();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
  .then(
    (FirebaseApp value) => Get.put(FirebaseController(),),
  );
  runApp(const MyApp());
}