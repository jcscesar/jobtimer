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
    apiKey: 'AIzaSyAuy4bgSJQEnnSQSHJIH85XbMIE8FfwhlM',
    appId: '1:1080110563274:web:bdecdc4b73edf2f7b7d933',
    messagingSenderId: '1080110563274',
    projectId: 'jobtimercs',
    authDomain: 'jobtimercs.firebaseapp.com',
    storageBucket: 'jobtimercs.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC_q1PnnyBUPwY7CQn3QXoYrasK5ESezuw',
    appId: '1:1080110563274:android:86921a9269756edab7d933',
    messagingSenderId: '1080110563274',
    projectId: 'jobtimercs',
    storageBucket: 'jobtimercs.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB3PrStJGYWNLdpVwQLRQkcJgecMIQQiHM',
    appId: '1:1080110563274:ios:31308e0898d06473b7d933',
    messagingSenderId: '1080110563274',
    projectId: 'jobtimercs',
    storageBucket: 'jobtimercs.appspot.com',
    androidClientId: '1080110563274-5tg36252ear1jidqukee3b379h8t185n.apps.googleusercontent.com',
    iosClientId: '1080110563274-td1jgkc6ad5jobvkogl230g7ejn2ghbh.apps.googleusercontent.com',
    iosBundleId: 'br.com.rcsbinfo.jobTimercs',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB3PrStJGYWNLdpVwQLRQkcJgecMIQQiHM',
    appId: '1:1080110563274:ios:31308e0898d06473b7d933',
    messagingSenderId: '1080110563274',
    projectId: 'jobtimercs',
    storageBucket: 'jobtimercs.appspot.com',
    androidClientId: '1080110563274-5tg36252ear1jidqukee3b379h8t185n.apps.googleusercontent.com',
    iosClientId: '1080110563274-td1jgkc6ad5jobvkogl230g7ejn2ghbh.apps.googleusercontent.com',
    iosBundleId: 'br.com.rcsbinfo.jobTimercs',
  );
}
