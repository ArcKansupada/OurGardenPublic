import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "",
            authDomain: "our-garden-w7e071.firebaseapp.com",
            projectId: "our-garden-w7e071",
            storageBucket: "our-garden-w7e071.appspot.com",
            messagingSenderId: "904752694230",
            appId: "1:904752694230:web:1d1a67a073541ad00bda77"));
  } else {
    await Firebase.initializeApp();
  }
}
