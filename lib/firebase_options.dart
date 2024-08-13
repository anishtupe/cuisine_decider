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
    apiKey: 'AIzaSyAH4FgGTD9aWJaLnjPfEjqt5EvVbSyq1Rk',
    appId: '1:504364116674:web:e048742e54355801bce95b',
    messagingSenderId: '504364116674',
    projectId: 'cuisine-decider-73b3d',
    authDomain: 'cuisine-decider-73b3d.firebaseapp.com',
    storageBucket: 'cuisine-decider-73b3d.appspot.com',
    measurementId: 'G-STCWJVE6PX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDBUqXdckz7HCun-fGc6uvVP1GQIHXy2Mw',
    appId: '1:504364116674:android:ca395e19dc64c59bbce95b',
    messagingSenderId: '504364116674',
    projectId: 'cuisine-decider-73b3d',
    storageBucket: 'cuisine-decider-73b3d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB1ceybtFNfLQnL__lTZ7veSaF1dTXNvxM',
    appId: '1:504364116674:ios:4f049b382ef73840bce95b',
    messagingSenderId: '504364116674',
    projectId: 'cuisine-decider-73b3d',
    storageBucket: 'cuisine-decider-73b3d.appspot.com',
    iosBundleId: 'com.example.cuisineDecider',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB1ceybtFNfLQnL__lTZ7veSaF1dTXNvxM',
    appId: '1:504364116674:ios:4f049b382ef73840bce95b',
    messagingSenderId: '504364116674',
    projectId: 'cuisine-decider-73b3d',
    storageBucket: 'cuisine-decider-73b3d.appspot.com',
    iosBundleId: 'com.example.cuisineDecider',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAH4FgGTD9aWJaLnjPfEjqt5EvVbSyq1Rk',
    appId: '1:504364116674:web:e6d7355bdf48eafebce95b',
    messagingSenderId: '504364116674',
    projectId: 'cuisine-decider-73b3d',
    authDomain: 'cuisine-decider-73b3d.firebaseapp.com',
    storageBucket: 'cuisine-decider-73b3d.appspot.com',
    measurementId: 'G-LJYGW1390N',
  );
}