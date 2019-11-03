import 'package:flutter/material.dart';
import 'package:flash_chat/pages/login-page.dart';
import 'package:flash_chat/pages/chat-page.dart';
import 'package:flash_chat/pages/register-page.dart';
import 'package:flash_chat/pages/welcome-page.dart';
import 'constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomePage(),
//      theme: ThemeData.light(),
//    );
      initialRoute: welcomePageId,
      routes: {
        loginPageId: (context) => LoginPage(),
        registerPageId: (context) => RegisterPage(),
        chatPageId: (context) => ChatPage(),
      },
    );
  }
}
