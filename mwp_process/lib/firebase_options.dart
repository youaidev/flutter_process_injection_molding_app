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
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDnVO3c8kzbAtUap4EkaBvPNL5P9AwisYU',
    appId: '1:244228170622:web:8f8b380ee407cf02ac492f',
    messagingSenderId: '244228170622',
    projectId: 'mwp-process',
    authDomain: 'mwp-process.firebaseapp.com',
    storageBucket: 'mwp-process.appspot.com',
    measurementId: 'G-GRT3B159RL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCpqfLJ1lcyVAUgo65qCEww22mXPn4Cezg',
    appId: '1:244228170622:android:8641cef89af2cb0eac492f',
    messagingSenderId: '244228170622',
    projectId: 'mwp-process',
    storageBucket: 'mwp-process.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCR_iou96xN9zTRCZjYKCAnpGPLR3GTCco',
    appId: '1:244228170622:ios:41ad669afb20bce3ac492f',
    messagingSenderId: '244228170622',
    projectId: 'mwp-process',
    storageBucket: 'mwp-process.appspot.com',
    iosClientId: '244228170622-2pr4cb3g2j0dv739eo2dlcthoc916al2.apps.googleusercontent.com',
    iosBundleId: 'com.example.mwpProcess',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCR_iou96xN9zTRCZjYKCAnpGPLR3GTCco',
    appId: '1:244228170622:ios:41ad669afb20bce3ac492f',
    messagingSenderId: '244228170622',
    projectId: 'mwp-process',
    storageBucket: 'mwp-process.appspot.com',
    iosClientId: '244228170622-2pr4cb3g2j0dv739eo2dlcthoc916al2.apps.googleusercontent.com',
    iosBundleId: 'com.example.mwpProcess',
  );
}