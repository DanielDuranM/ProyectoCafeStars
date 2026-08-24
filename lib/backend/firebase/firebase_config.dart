import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA1Ji23M1e2zziAIfMaUo5wmC8qQLVPYUc",
            authDomain: "proyecto-daniel-duran-zy9k9a.firebaseapp.com",
            projectId: "proyecto-daniel-duran-zy9k9a",
            storageBucket: "proyecto-daniel-duran-zy9k9a.firebasestorage.app",
            messagingSenderId: "534914046991",
            appId: "1:534914046991:web:da08b5767b8f6d8399977a"));
  } else {
    await Firebase.initializeApp();
  }
}
