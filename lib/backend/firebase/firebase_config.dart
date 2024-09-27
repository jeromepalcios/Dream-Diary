import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAKVUT8T5sLCoHK7uDmShAoCKFKOik-eLE",
            authDomain: "dream-diary-mm9023.firebaseapp.com",
            projectId: "dream-diary-mm9023",
            storageBucket: "dream-diary-mm9023.appspot.com",
            messagingSenderId: "685561116755",
            appId: "1:685561116755:web:79c3a29c44875bfd622ea6"));
  } else {
    await Firebase.initializeApp();
  }
}
