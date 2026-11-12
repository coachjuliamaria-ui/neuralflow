import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCdQ9fIE-0ysRzaQgkpG8Af9Tgx7bXv6yU",
            authDomain: "jornada-consciente-z51hfo.firebaseapp.com",
            projectId: "jornada-consciente-z51hfo",
            storageBucket: "jornada-consciente-z51hfo.firebasestorage.app",
            messagingSenderId: "1015838663079",
            appId: "1:1015838663079:web:e0c3b01fc538e5a0541682"));
  } else {
    await Firebase.initializeApp();
  }
}
