
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data_class.dart';

class Transfer extends StatelessWidget {
// test
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
       leading: Padding(
         padding: const EdgeInsets.all(8.0),
         child: CircleAvatar(radius: 17,backgroundColor: Colors.grey[300],
           child: CircleAvatar(radius: 14,backgroundColor: Colors.white,
               child:Padding(
                 padding: const EdgeInsets.only(left: 8.0),
                 child: Icon(Icons.arrow_back_ios,color: Colors.black45,),
               )),
         ),
       ) ,
       leadingWidth: 50,
       title: Text( 'Transfer Request',style: TextStyle(fontSize: 20,color: Colors.black,) ),
        centerTitle: true,
        actions:[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(radius: 17,backgroundColor: Colors.grey[300],
              child: CircleAvatar(radius: 14,backgroundColor: Colors.white,

                  child:Icon(Icons.search_outlined,color: Colors.black54,)),
            ),
          ) ,
        ] ,
      ),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(children: [

            Row(children: [
                Text('Today, 25 june'),
              ],),
            transferBuild(Data(image: 'images/apple.png',name: 'Apple store',date:'22 june,2022',price: 220.0,type: 'master card',container: Color(0xfff3f3f3))),
            transferBuild(Data(image: 'images2/netflix.png',name:'Netflix',date:  '21 june,2022',price: 170.0,type: 'master card',container: Color(0xfffcd9dd)),),
            transferBuild(Data(image: 'images2/spotify.png',name: 'spotify',date: '20 june,2022',price: 54.0,type: 'master card',container: Color(0xffdcfbe7)),),
            transferBuild(  Data(image: 'images2/dribble.png',name:'Dribble',date: '18 june, 2022',price: 107,type: 'master card',container: Color(0xfffde6ee)),),
                Row(children: [
                    Text('Yesterday'),
                  ],),
            transferBuild(Data(image: 'images2/behance2.png',name: 'Behance',date:   '18 june, 2022',price: 150,type: 'Credit card',container: Color(0xffd8e6ff)),),
            transferBuild(Data(image: 'images2/linkedin.png',name: 'Linkedin',date: '18 june, 2022',price: 463.2,type: 'Debit card' ,container: Color(0xffd9eaf4)),),
            transferBuild(Data(image: 'images2/snapchat.png',name: 'Snapchat',date: '18 june, 2022',price: 220,type: 'Debit card' ,container: Color(0xfffff3d9)),),
            Row(children: [
                Text('20 june,2022'),
              ],),
            transferBuild(Data(image:'images2/skype.png',name: 'skype',date: '15 june, 2022',price: 220,type: 'Debit card' ,container: Color(0xffd8f5fd)),),
            transferBuild(Data(image:'images2/figma.png',name: 'Figma',date: '15 june, 2022',price: 220,type: 'Credit card',container: Color(0xfff5f5f5)),),
          ],),
        ),)
      );
  }}

