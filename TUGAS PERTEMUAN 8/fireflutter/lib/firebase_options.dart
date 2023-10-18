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
    apiKey: 'AIzaSyAwluIdllfs6rhqqZ5p9_dGb9vtRz6JSwo',
    appId: '1:861747581451:web:e28fc6099a63e24023ed0e',
    messagingSenderId: '861747581451',
    projectId: 'flutterfirebase-ftrh',
    authDomain: 'flutterfirebase-ftrh.firebaseapp.com',
    storageBucket: 'flutterfirebase-ftrh.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA9-1IvbmYEPheYHYAb8sylYDWv_P7iY8A',
    appId: '1:861747581451:android:5fd947403915c55023ed0e',
    messagingSenderId: '861747581451',
    projectId: 'flutterfirebase-ftrh',
    storageBucket: 'flutterfirebase-ftrh.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDv_fZqBDT6WMQNpGucI47Kt54lqP9q7G8',
    appId: '1:861747581451:ios:c10f00bcf8dfb9d923ed0e',
    messagingSenderId: '861747581451',
    projectId: 'flutterfirebase-ftrh',
    storageBucket: 'flutterfirebase-ftrh.appspot.com',
    androidClientId: '861747581451-pie3q0kgjauocc56lur1q3ubssg2p6q2.apps.googleusercontent.com',
    iosClientId: '861747581451-mhdu9j6ntlqf25dn62ar87q9gitpr8ij.apps.googleusercontent.com',
    iosBundleId: 'com.example.fireflutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDv_fZqBDT6WMQNpGucI47Kt54lqP9q7G8',
    appId: '1:861747581451:ios:76042dc0e9288aaa23ed0e',
    messagingSenderId: '861747581451',
    projectId: 'flutterfirebase-ftrh',
    storageBucket: 'flutterfirebase-ftrh.appspot.com',
    androidClientId: '861747581451-pie3q0kgjauocc56lur1q3ubssg2p6q2.apps.googleusercontent.com',
    iosClientId: '861747581451-fq02d8van1ttb9biaggeofjfees2dtub.apps.googleusercontent.com',
    iosBundleId: 'com.example.fireflutter.RunnerTests',
  );
}