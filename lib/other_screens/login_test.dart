import 'package:flutter/material.dart';

class test extends StatelessWidget {

  // login screen from power point
  // I tried to make the same screen

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8BC24A),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Text('مرحبا قم بتسجيل الدخول من فضلك',
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft:     Radius.circular(30),
                  topRight:    Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: Column(
                children:
                [
                  SizedBox(height: 90,),
                  Image(
                    image: NetworkImage('https://pbs.twimg.com/profile_images/1504092766879551488/iyCFUhnE_400x400.jpg'),
                    width: 150,height: 100,),
                  SizedBox(height: 5),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      hintTextDirection: TextDirection.rtl,
                      hintText:'البريد الالكتروني' ,hintStyle: TextStyle(color: Colors.orangeAccent),
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      hintTextDirection: TextDirection.rtl,
                      hintText: 'كلمه المرور',hintStyle: TextStyle(color: Colors.orangeAccent),
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                  SizedBox(height: 50),
                  ElevatedButton(
                      style:ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent,
                          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                      ),
                      onPressed: () {},
                      child: Text('تسجيل الدخول',style: TextStyle(color: Colors.white))
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textDirection:TextDirection.rtl ,
                    children: [
                      Text('ليس لديك حساب من قبل ؟'),
                      TextButton(onPressed: (){}, child: Text('قم بالتسجيل',style: TextStyle(color: Colors.orangeAccent),))
                    ],),
                ],),
            ),
          ),
        ],) ,
    );
  }
}
