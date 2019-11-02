import 'package:flutter/material.dart';
import 'package:flash_chat/custom_widgets/custom-rounded-button.dart';
import 'package:flash_chat/custom_widgets/custom-textfield.dart';
import 'package:flash_chat/constants.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.flash_on,
                color: Colors.amber[400],
                size: 200.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomTextField(
                placeHolder: emailPlaceHolder,
                onChange: (val) {
                  print(val);
                },
              ),
              CustomTextField(
                placeHolder: passwordPlaceHolder,
                onChange: (val) {
                  print(val);
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomRoundedButton(
                text: registerButtonText,
                color: darkBlue,
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}
