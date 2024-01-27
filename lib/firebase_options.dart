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
    apiKey: 'AIzaSyC_Akn2eUVJHsbvqZeA5HMjB00dvgc3w74',
    appId: '1:403281978799:web:5c57b572e93b8fe48bfb5a',
    messagingSenderId: '403281978799',
    projectId: 'astler',
    authDomain: 'astler.firebaseapp.com',
    storageBucket: 'astler.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyALAWAR81G03fU2wEEFskDLtTmRuFXK_aA',
    appId: '1:403281978799:android:774dce43c66a19b08bfb5a',
    messagingSenderId: '403281978799',
    projectId: 'astler',
    storageBucket: 'astler.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDA-KXtnxvaYTvk09q0iCTFaF2GzWDsWN0',
    appId: '1:403281978799:ios:837f904ebcb72dcc8bfb5a',
    messagingSenderId: '403281978799',
    projectId: 'astler',
    storageBucket: 'astler.appspot.com',
    iosBundleId: 'com.example.astler',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDA-KXtnxvaYTvk09q0iCTFaF2GzWDsWN0',
    appId: '1:403281978799:ios:837f904ebcb72dcc8bfb5a',
    messagingSenderId: '403281978799',
    projectId: 'astler',
    storageBucket: 'astler.appspot.com',
    iosBundleId: 'com.example.astler',
  );
}
