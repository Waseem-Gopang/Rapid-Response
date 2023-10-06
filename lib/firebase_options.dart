import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCmZVJth4G0LL_G07V9ZJ0yAJnGZ6MJtPA',
    appId: '1:962506873915:android:bc4945b046de41ae46901e',
    messagingSenderId: '962506873915',
    projectId: 'rapidresponse-team',
    authDomain: 'rapidresponse-team.firebaseapp.com',
    storageBucket: 'rapidresponse-team.appspot.com',
    measurementId: 'G-DQW99JW51L',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCmZVJth4G0LL_G07V9ZJ0yAJnGZ6MJtPA',
    appId: '1:962506873915:android:bc4945b046de41ae46901e',
    messagingSenderId: '962506873915',
    projectId: 'rapidresponse-team',
    storageBucket: 'rapidresponse-team.appspot.com',
  );
}
