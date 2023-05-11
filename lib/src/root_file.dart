import 'package:eraasoft7/screens/2nd_post_screen/post_screen.dart';
import 'package:eraasoft7/screens/3rd_login_screen/3rd_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/1st_transfer_screen/1st_image.dart';
import 'package:eraasoft7/other_screens/login_test.dart';
class Approot extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );

  }
}
