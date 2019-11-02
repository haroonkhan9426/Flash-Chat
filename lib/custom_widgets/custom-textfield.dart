import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';

class CustomTextField extends StatelessWidget {
  final String placeHolder;
  final Function onChange;

  CustomTextField({this.placeHolder, this.onChange});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(25, 15, 25, 15),
          hintText: placeHolder,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onChanged: onChange
      ),
    );
  }
}
