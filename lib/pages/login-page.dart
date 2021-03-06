import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';
import 'package:flash_chat/custom_widgets/custom-textfield.dart';
import 'package:flash_chat/custom_widgets/custom-rounded-button.dart';
import 'package:flash_chat/services/firebase-auth-helper.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email;
  String password;
  bool showProgressSpinner = false;
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ModalProgressHUD(
      inAsyncCall: showProgressSpinner,
      child: Container(
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
              controller: emailTextController,
              obscurText: false,
              placeHolder: emailPlaceHolder,
              onChange: (val) {
                email = val;
//              print(val);
              },
            ),
            CustomTextField(
              controller: passwordTextController,
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
              onPressed: () async {
                emailTextController.clear();
                passwordTextController.clear();
                setState(() {
                  showProgressSpinner = true;
                });
                var user = await FirebaseAuthHelper()
                    .login(email = email, password = password);
                if (user != null) {
                  print(user.email);
                  Navigator.pushNamed(context, chatPageId, arguments: user);
                } else {
                  print('Login Failed');
                }
                setState(() {
                  showProgressSpinner = false;
                });
              },
            ),
          ],
        ),
      ),
    ));
  }
}
