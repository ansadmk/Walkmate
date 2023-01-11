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
    apiKey: 'AIzaSyABQKQrFkr7ctL1GvUwuMjVBIKoJrXHXzc',
    appId: '1:313014453780:web:d61e298a191a48b8678901',
    messagingSenderId: '313014453780',
    projectId: 'travas-ansad',
    authDomain: 'travas-ansad.firebaseapp.com',
    storageBucket: 'travas-ansad.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDfCIaF75ATh-9EmXaRZpoOZvA2aL1waSE',
    appId: '1:313014453780:android:6e8d7a25bbf65e9f678901',
    messagingSenderId: '313014453780',
    projectId: 'travas-ansad',
    storageBucket: 'travas-ansad.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBqxGpjMs7KLxbCUWtybRqGPYAeNSkoIDs',
    appId: '1:313014453780:ios:a5dcac146616ff81678901',
    messagingSenderId: '313014453780',
    projectId: 'travas-ansad',
    storageBucket: 'travas-ansad.appspot.com',
    androidClientId: '313014453780-7tod6mbh527innjp7q4a5b0d651s2lhf.apps.googleusercontent.com',
    iosClientId: '313014453780-ar2tgvmu2lhbgfsu94l6orauvhvof10u.apps.googleusercontent.com',
    iosBundleId: 'com.example.app',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBqxGpjMs7KLxbCUWtybRqGPYAeNSkoIDs',
    appId: '1:313014453780:ios:a5dcac146616ff81678901',
    messagingSenderId: '313014453780',
    projectId: 'travas-ansad',
    storageBucket: 'travas-ansad.appspot.com',
    androidClientId: '313014453780-7tod6mbh527innjp7q4a5b0d651s2lhf.apps.googleusercontent.com',
    iosClientId: '313014453780-ar2tgvmu2lhbgfsu94l6orauvhvof10u.apps.googleusercontent.com',
    iosBundleId: 'com.example.app',
  );
}
