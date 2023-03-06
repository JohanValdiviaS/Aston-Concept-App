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
    apiKey: 'AIzaSyDkn2j0jWzjjenl87CErT_1B1QPSYLi-Fw',
    appId: '1:923610257490:web:46b17913810b4ddb6d678b',
    messagingSenderId: '923610257490',
    projectId: 'aston-app-v1',
    authDomain: 'aston-app-v1.firebaseapp.com',
    storageBucket: 'aston-app-v1.appspot.com',
    measurementId: 'G-YZQYRXFY9N',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAGvnFFJgWZ9eFxJx8BPa4yMGn-gUljZkg',
    appId: '1:923610257490:android:4782a24934e3edd26d678b',
    messagingSenderId: '923610257490',
    projectId: 'aston-app-v1',
    storageBucket: 'aston-app-v1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDymkwf1ANaYDktR_6Mkdj66l2GJPn3xWU',
    appId: '1:923610257490:ios:5cebe0f9062f21676d678b',
    messagingSenderId: '923610257490',
    projectId: 'aston-app-v1',
    storageBucket: 'aston-app-v1.appspot.com',
    iosClientId: '923610257490-suiu414lhhi48josmq1t99uge934q58e.apps.googleusercontent.com',
    iosBundleId: 'com.example.astonApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDymkwf1ANaYDktR_6Mkdj66l2GJPn3xWU',
    appId: '1:923610257490:ios:5727d8d7be67f94b6d678b',
    messagingSenderId: '923610257490',
    projectId: 'aston-app-v1',
    storageBucket: 'aston-app-v1.appspot.com',
    iosClientId: '923610257490-rp08nkvohu9i34s4vgnhcsp26sc2lat1.apps.googleusercontent.com',
    iosBundleId: 'com.example.astonApp.RunnerTests',
  );
}