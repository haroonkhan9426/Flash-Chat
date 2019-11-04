import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';
import 'package:flash_chat/services/firebase-helper.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightBlue,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text('⚡ Chat'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 30.0),
            child: IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.white,
              ),
              onPressed: (){
                print('Logout pressed');
                FireBaseHelper().logout();
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
