import 'package:flutter/material.dart';

class Imagelogo{
  String? Signin;
  Imagelogo(this.Signin);
}
Widget otherSign(Imagelogo logo)=>  Container(
  decoration: BoxDecoration(
    border: Border.all(color: Colors.white),
    borderRadius: BorderRadius.circular(10),
    color: Color(0xffebebee),
    boxShadow: [BoxShadow(
      color: Colors.grey.withOpacity(0.7),
      blurRadius: 9,),
    ],
  ),
  child:
  Padding(
    padding: const EdgeInsets.all(14.0),
    child: Image(image:AssetImage('${logo.Signin}'),
      height: 15,
    ),
  ),);
