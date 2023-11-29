// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAjW8vjBCdk2tPpz2MieySdIOLqw2DstFM',
    appId: '1:123382789346:android:82ce265aa01685fba99abb',
    messagingSenderId: '123382789346',
    projectId: 'opus-aff50',
    storageBucket: 'opus-aff50.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBkAxm_Ebrk1Io5pe5ngsyloJdFe9iSac8',
    appId: '1:123382789346:ios:0e564fb4fbcd1717a99abb',
    messagingSenderId: '123382789346',
    projectId: 'opus-aff50',
    storageBucket: 'opus-aff50.appspot.com',
    androidClientId: '123382789346-d55qsf8rqsqt8l009uvo2s03p0qgah5p.apps.googleusercontent.com',
    iosClientId: '123382789346-qhfda0u16msej1clphur2c2dci0ntoqk.apps.googleusercontent.com',
    iosBundleId: 'com.example.tarotit',
  );
}