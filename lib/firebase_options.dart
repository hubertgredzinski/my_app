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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDV-yMUGpI6tbwfel3xaG7L7GqS3W7cW_0',
    appId: '1:445460334926:android:dc98933ced51f6fc9ff61f',
    messagingSenderId: '445460334926',
    projectId: 'my-activity97',
    storageBucket: 'my-activity97.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBA3TonrZWWpXuiRbAfhIMB8-7YP6xGT0I',
    appId: '1:445460334926:ios:30dd79b0a968b8d39ff61f',
    messagingSenderId: '445460334926',
    projectId: 'my-activity97',
    storageBucket: 'my-activity97.appspot.com',
    iosClientId: '445460334926-uafj3i882tav41prfj656urgo8msdh14.apps.googleusercontent.com',
    iosBundleId: 'com.hubertgredzinski.my-activity97',
  );
}
