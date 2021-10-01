import 'package:flutter/material.dart';
import 'package:showroom_front/login/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:showroom_front/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Show Room Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
