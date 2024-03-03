import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCNE4lBVVh9Ue_7UOaOC54TC_cHIkoxl2Q",
            authDomain: "vidyagram-efb3e.firebaseapp.com",
            projectId: "vidyagram-efb3e",
            storageBucket: "vidyagram-efb3e.appspot.com",
            messagingSenderId: "47125526230",
            appId: "1:47125526230:web:44db3cbd9c0aac54df7b77",
            measurementId: "G-JWZTETMEN1"));
  } else {
    await Firebase.initializeApp();
  }
}
