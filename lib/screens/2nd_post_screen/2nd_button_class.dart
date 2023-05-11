import 'package:flutter/material.dart';

class Button{
  String? text;
  Button(this.text);
}
Widget elevatedbutton(Button elevated)=> ElevatedButton(
    style:ElevatedButton.styleFrom(backgroundColor: Color(0xff3F2C3B),
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
    onPressed: () {},
    child: Text('${elevated.text}',style: TextStyle(color: Color(0xff935B58)
    ))
);