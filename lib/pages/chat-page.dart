import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';
import 'package:flash_chat/services/firebase-auth-helper.dart';
import 'package:flash_chat/services/firebase-firestore-helper.dart';
import 'package:flash_chat/models/message.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  FirestoreHelper firestoreHelper;
  FirebaseUser currentUser;
  Message message;
  @override
  Widget build(BuildContext context) {
    currentUser = ModalRoute.of(context).settings.arguments;
    message.sender = currentUser.email;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightBlue,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
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
              onPressed: () {
                print('Logout pressed');
                FirebaseAuthHelper().logout();
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              TextField(
                onChanged: (val){
                  message.text = val;
                },
              ),
              FlatButton(
                child: Text('Send'),
                onPressed: () {
                  firestoreHelper
                      .saveMessage(message);
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
