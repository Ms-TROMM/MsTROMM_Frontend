// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCyBLc9J9d4BMHNwki-G0Z25tycD_mXK_w',
    appId: '1:337147493152:web:391ca74d3f24d58ffc3545',
    messagingSenderId: '337147493152',
    projectId: 'tromm-2021',
    authDomain: 'tromm-2021.firebaseapp.com',
    storageBucket: 'tromm-2021.appspot.com',
    measurementId: 'G-HKDWQP8749',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCgcP6WxgZq0-ifcEyBhMN4wDRbzVKlNXQ',
    appId: '1:337147493152:android:2408bd0a6bb5ab07fc3545',
    messagingSenderId: '337147493152',
    projectId: 'tromm-2021',
    storageBucket: 'tromm-2021.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDO4e6jCsJkFV1kP4gA-TgnKOtNEJ6eErQ',
    appId: '1:337147493152:ios:e8d92ccfb9a61f28fc3545',
    messagingSenderId: '337147493152',
    projectId: 'tromm-2021',
    storageBucket: 'tromm-2021.appspot.com',
    androidClientId: '337147493152-atcu9u39q8pofocjsba80ev986sr64e6.apps.googleusercontent.com',
    iosClientId: '337147493152-4ia8mlmu6f9vf1uuk8vfeussad83gei5.apps.googleusercontent.com',
    iosBundleId: 'com.mstromm.app',
  );
}