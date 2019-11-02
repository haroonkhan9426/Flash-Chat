import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';
import 'package:flash_chat/custom_widgets/custom-rounded-button.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.flash_on,
                  color: Colors.amber[400],
                  size: 50.0,
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
            SizedBox(
              height: 30.0,
            ),
            CustomRoundedButton(
              text: loginButtonText,
              color: lightBlue,
              onPressed: (){
                Navigator.pushNamed(context, loginPageId);
              },
            ),
            CustomRoundedButton(
              text: registerButtonText,
              color: darkBlue,
              onPressed: (){
                //to be implemented
              },
            ),
          ],
        ),
      ),
    );
  }
}
