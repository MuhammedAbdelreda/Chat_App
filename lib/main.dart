import 'package:flutter/material.dart';
import 'package:flutter_application_6/screens/chat_screen.dart';
import 'package:flutter_application_6/screens/login_screen.dart';
import 'package:flutter_application_6/screens/registration_screen.dart';
import 'package:flutter_application_6/screens/welcome_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: const TextStyle(color: Colors.black54),
        ),
      ),
      //home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      routes:{
        WelcomeScreen.id :(context) => WelcomeScreen(),
        ChatScreen.id :(context) => ChatScreen(),
        LoginScreen.id :(context) => LoginScreen(),
        RegistrationScreen.id :(context) => RegistrationScreen(),
      } ,
    );
  }
}