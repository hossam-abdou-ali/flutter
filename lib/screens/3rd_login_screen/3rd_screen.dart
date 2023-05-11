import 'package:eraasoft7/screens/3rd_login_screen/3rd_image_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdfe5f4),
      body: Column(
        children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(35.0),
                child: Column(
                  children: [
                  const CircleAvatar(
                    backgroundImage:NetworkImage('https://png.pngtree.com/png-clipart/20200401/original/pngtree-modern-flat-design-concept-of-ui-ux-design-with-characters-and-png-image_5332906.jpg'),
                  radius: 110,),
                    SizedBox(height: 5,),
                    Text('Welcome Back!',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                    SizedBox(height: 7,),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(' E-mail Adress',style: TextStyle(color: Colors.grey,fontSize: 12)),
                      ],),
                    // E-mail TextFormField
                    TextFormField(
                      decoration: InputDecoration(border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                        suffixIcon: Icon(Icons.email_outlined),
                        hintText: 'hello@yourname.com',
                        hintStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text('Password',style: TextStyle(color: Colors.grey,fontSize: 12)),
                        TextButton(onPressed: (){},
                            child: Text('forget password?',style: TextStyle(color: Colors.grey,fontWeight:FontWeight.bold,fontSize:12,decoration: TextDecoration.underline),))
                    ],),
                    // password TextFormField
                    TextFormField(
                      decoration: InputDecoration(border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                        suffixIcon: Icon(Icons.remove_red_eye),
                        hintText: 'Enter Your Password',
                          hintStyle: TextStyle(fontSize: 14)),
                    ),
                    Row(children: [
                      Checkbox(value: true, onChanged: (bool? value){},),
                      Text('Remember me'),
                    ],),

                    // the divider between TextFormFields and other signIn
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Expanded(child: Divider(color: Colors.blueGrey[300],thickness: 0.6 ,height: 10)),
                      Text(' OR ',style: TextStyle(color: Colors.grey,fontSize: 10),),
                      Expanded(child: Divider(color: Colors.blueGrey[300],thickness: 0.6 ,height: 10))
                    ],),
                    SizedBox(height: 20,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        otherSign(Imagelogo('images/google2.png') ),
                        SizedBox(width: 10,),
                        otherSign(Imagelogo('images/apple.png') ),
                        SizedBox(width: 10,),
                        otherSign(Imagelogo('images/facebook.png') ),
                         ],),
                         SizedBox(height: 40,),

                         // login button
                         Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),
                            color: Colors.black,),
                         width: 280,height: 30,
                          child: MaterialButton(onPressed: (){},
                            child:Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              Text('Log in ',style: TextStyle(color: Colors.white,fontSize: 12),),
                              Icon(Icons.arrow_forward_outlined,color: Colors.white,size: 15,)
                        ],)
                        ),),

                    // text to signup if no account
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Text('Don\'t have an account ? ',style: TextStyle(fontSize: 12),),
                      TextButton(onPressed: (){}, child: Text('Sign up',style: TextStyle(fontSize: 12)))
                    ],)
                  ],),
              ),
            ),
          ),
        )
      ],),
    );
  }}

