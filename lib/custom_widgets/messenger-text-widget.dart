import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';

class MessengerTextRight extends StatelessWidget {
  final String text;
  final String sender;
  final bool isMe;

  MessengerTextRight({this.text, this.sender, this.isMe});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(sender),
          Material(
            elevation: 5.0,
            color: Colors.lightBlueAccent,
            borderRadius: chatBorderRadiusRight,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                text,
                style: chatTextStyleRight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MessengerTextLeft extends StatelessWidget {
  final String text;
  final String sender;
  final bool isMe;

  MessengerTextLeft({this.text, this.sender, this.isMe});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(sender, style: chatUserNameTextStyle,),
          Material(
            elevation: 5.0,
            color: Colors.white,
            borderRadius: chatBorderRadiusLeft,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                text,
                style: chatTextStyleLeft,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

