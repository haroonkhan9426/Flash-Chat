import 'package:flutter/material.dart';
import 'package:flash_chat/pages/login-page.dart';
import 'package:flash_chat/pages/chat-page.dart';
import 'package:flash_chat/pages/register-page.dart';
import 'package:flash_chat/pages/welcome-page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomePage.id,
      routes: {
        LoginPage.id: (context) => LoginPage(),
        RegisterPage.id: (context) => RegisterPage(),
        ChatPage.id: (context) => ChatPage(),
      },
    );
  }
}
