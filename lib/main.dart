
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:untitled8/screens/chat.dart';
import 'package:untitled8/screens/login.dart';
import 'package:untitled8/screens/registration.dart';
import 'package:untitled8/screens/welcome.dart';

import 'firebase_options.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();


  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ChitChat());
}

class ChitChat extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(

          bodyMedium: TextStyle(color: Colors.black87)
        ),
      ),
      routes: {
        '/':(context) => WelcomeScreen(),

        "Welcome":(context) => WelcomeScreen(),
        "ChatScreen":(context) => ChatScreen(),
        "LoginScreen":(context) => LoginScreen(),
        "RegistrationScreen":(context) => RegistrationScreen(),
      },
    );
  }
}

