import 'package:flutter/material.dart';
import 'package:flash_chat/pages/home-page.dart';
import 'package:flash_chat/pages/login-page.dart';
import 'package:flash_chat/pages/chat-page.dart';
import 'package:flash_chat/pages/register-page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/login': (context) => HomePage(),
        '/register': (context) => RegisterPage(),
        '/chat': (context) => ChatPage(),
      },
    );
  }
}
