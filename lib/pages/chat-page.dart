import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';
import 'package:flash_chat/services/firebase-auth-helper.dart';
import 'package:flash_chat/services/firebase-firestore-helper.dart';
import 'package:flash_chat/models/message.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/custom_widgets/messenger-text-widget.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  FirestoreHelper firestoreHelper = FirestoreHelper();
  FirebaseUser currentUser;
  Message message = Message();

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
          StreamBuilder(
            stream: firestoreHelper.getMessagesStream(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final messages = snapshot.data.documents;
                List<MessengerText> textWidgets =
                    messages.map<MessengerText>((message) {
                  final messageText = message.data['text'];
                  final messageSender = message.data['sender'];
                  return MessengerText(
                    text: '$messageText',
                    sender: messageSender,
                  );
                }).toList();
                return Expanded(
                  child: ListView(
                    children: textWidgets,
                  ),
                );
              } else {
                return CircularProgressIndicator(
                  backgroundColor: Colors.lightBlueAccent,
                );
              }
            },
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: TextField(
                  onChanged: (val) {
                    message.text = val;
                  },
                ),
              ),
              FlatButton(
                child: Text('Send'),
                onPressed: () {
                  firestoreHelper.saveMessage(message);
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
