import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';

class MessengerText extends StatelessWidget {
  final String text;
  final String sender;

  MessengerText({this.text, this.sender});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(sender),
          Material(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(20.0),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                text,
                style: chatTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
