import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCLeL-haSueWbE0XUiupQJxDExzJIkJItA",
            authDomain: "metronic-2a9tmj.firebaseapp.com",
            projectId: "metronic-2a9tmj",
            storageBucket: "metronic-2a9tmj.appspot.com",
            messagingSenderId: "495813636757",
            appId: "1:495813636757:web:97e512749de593c3aa619c"));
  } else {
    await Firebase.initializeApp();
  }
}
