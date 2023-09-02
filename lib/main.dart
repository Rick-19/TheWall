import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:thewall/auth/auth.dart';
//import 'package:thewall/auth/auth.dart';
//import 'package:thewall/auth/login_or_register.dart';
import 'package:thewall/firebase_options.dart';
//import 'package:thewall/pages/post_page.dart';
//import 'package:thewall/pages/login_page.dart';
//import 'package:thewall/pages/register_page.dart';
/*import 'package:socialmedia_app/firebase_options.dart';*/
//import 'package:socialmedia_app/pages/post_page.dart';
import './theme/dark_theme.dart';
//import './theme/light_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      darkTheme: darkTheme,
      home: const AuthPage(),
    );
  }
}
