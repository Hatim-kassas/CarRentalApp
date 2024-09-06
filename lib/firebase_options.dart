// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCyF_BX9XrofChWp_p146wyA2QfOnoJJFM',
    appId: '1:480628397223:web:f05d6b6cb6e7f5aede3782',
    messagingSenderId: '480628397223',
    projectId: 'car-rental-project-fb6ab',
    authDomain: 'car-rental-project-fb6ab.firebaseapp.com',
    storageBucket: 'car-rental-project-fb6ab.appspot.com',
    measurementId: 'G-H708FYHQSG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDPIi0C9ZkqDeuP4DFP9N-jyZncF7G80gM',
    appId: '1:480628397223:android:6b2f2667243a2377de3782',
    messagingSenderId: '480628397223',
    projectId: 'car-rental-project-fb6ab',
    storageBucket: 'car-rental-project-fb6ab.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBAYbJflGMs_sRBNCj9-RixCgdZG5McvLc',
    appId: '1:480628397223:ios:6da9e87e93612048de3782',
    messagingSenderId: '480628397223',
    projectId: 'car-rental-project-fb6ab',
    storageBucket: 'car-rental-project-fb6ab.appspot.com',
    iosBundleId: 'com.example.carRantalApplication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBAYbJflGMs_sRBNCj9-RixCgdZG5McvLc',
    appId: '1:480628397223:ios:6da9e87e93612048de3782',
    messagingSenderId: '480628397223',
    projectId: 'car-rental-project-fb6ab',
    storageBucket: 'car-rental-project-fb6ab.appspot.com',
    iosBundleId: 'com.example.carRantalApplication',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCyF_BX9XrofChWp_p146wyA2QfOnoJJFM',
    appId: '1:480628397223:web:8d25368f034210fcde3782',
    messagingSenderId: '480628397223',
    projectId: 'car-rental-project-fb6ab',
    authDomain: 'car-rental-project-fb6ab.firebaseapp.com',
    storageBucket: 'car-rental-project-fb6ab.appspot.com',
    measurementId: 'G-MZ4BE6BH3P',
  );
}
