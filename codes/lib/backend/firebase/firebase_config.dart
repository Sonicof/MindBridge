import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "*******",
            authDomain: "mindbridge2-4f542.firebaseapp.com",
            projectId: "mindbridge2-4f542",
            storageBucket: "mindbridge2-4f542.firebasestorage.app",
            messagingSenderId: "581257164722",
            appId: "1:581257164722:web:a6dc0370a960177c1d16ab"));
  } else {
    await Firebase.initializeApp();
  }
}
