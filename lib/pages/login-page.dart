import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';
import 'package:flash_chat/custom_widgets/custom-textfield.dart';
import 'package:flash_chat/custom_widgets/custom-rounded-button.dart';
import 'package:flash_chat/services/firebase-helper.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String email;
    String password;
    return Scaffold(
        body: Container(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Hero(
            tag: 'flashIcon',
            child: Icon(
              Icons.flash_on,
              color: Colors.amber[400],
              size: 200.0,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          CustomTextField(
            obscurText: false,
            placeHolder: emailPlaceHolder,
            onChange: (val) {
              email = val;
//              print(val);
            },
          ),
          CustomTextField(
            obscurText: true,
            placeHolder: passwordPlaceHolder,
            onChange: (val) {
              password = val;
//              print(val);
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          CustomRoundedButton(
            text: loginButtonText,
            color: lightBlue,
            onPressed: () async{
              var user = await FireBaseHelper()
                  .login(email = email, password = password);
              if(user != null){
                print(user.email);
                Navigator.pushNamed(context, chatPageId);
              }else{
                print('Login Failed');
              }
            },
          ),
        ],
      ),
    ));
  }
}
