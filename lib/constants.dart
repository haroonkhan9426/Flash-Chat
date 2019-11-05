import 'package:flutter/material.dart';

/// Color Constants
const Color lightBlue = Color(0xFF4cccff);
const Color darkBlue = Color(0xFF5895fe);

/// TextStyle Constants
const welcomeScreenTextStyle = TextStyle(
  fontSize: 40.0,
  fontWeight: FontWeight.w900,
  color: Colors.black,
);

const buttonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 15.0,
);

const chatTextStyleLeft = TextStyle(
  color: Colors.black,
  fontSize: 15.0,
);


const chatTextStyleRight = TextStyle(
  color: Colors.white,
  fontSize: 15.0,
);

const chatUserNameTextStyle = TextStyle(
    color: Colors.black12,
    fontSize: 10.0,
);


/// String Constants
const String loginButtonText = 'Log In';
const String registerButtonText = 'Register';
const String welcomeMessage = 'Flash Chat';
const String emailPlaceHolder = 'Enter your email';
const String passwordPlaceHolder = 'Enter your password';
const String appBarText = 'Chat';

/// Screen Ids
const String welcomePageId = 'welcome-page';
const String registerPageId = 'register-page';
const String loginPageId = 'login-page';
const String chatPageId = 'chat-page';

/// Border Radius
const BorderRadius chatBorderRadiusRight = BorderRadius.only(
  topLeft: Radius.circular(30.0),
  bottomLeft: Radius.circular(30.0),
  bottomRight: Radius.circular(30.0),
);

const BorderRadius chatBorderRadiusLeft = BorderRadius.only(
  bottomLeft: Radius.circular(30.0),
  bottomRight: Radius.circular(30.0),
  topRight: Radius.circular(30.0),
);