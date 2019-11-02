import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';
import 'package:flash_chat/custom_widgets/custom-rounded-button.dart';

class WelcomePage extends StatelessWidget {
  static const String id = 'welcome-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.flash_on,
                  color: Colors.amber[400],
                  size: 40.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Falsh Chat',
                  style: welcomeScreenTextStyle,
                ),
              ],
            ),
            CustomRoundedButton(
              text: 'Log In',

            ),
          ],
        ),
      ),
    );
  }
}
