import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tra extends StatelessWidget {

// test

   //  trying to make it as list tile
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:Colors.green,
          actions: [Container(decoration: BoxDecoration(
            border: Border.all(color: Colors.white,width: 0.1),),
              child: Icon(Icons.search_rounded)),],
        ),
        body:SingleChildScrollView(
          child: Column(
            children: [
              transferBuild(Data(image: 'images/apple.png',name: 'Apple store',date:'22 june,2022',price: 220,type: 'master card')),
              transferBuild(Data(image: 'images2/netflix.png',name:'Netflix',date:  '21 june,2022',price: 220,type: 'master card'),),
              transferBuild(Data(image: 'images2/spotify.png',name: 'spotify',date: '20 june,2022',price: 220,type: 'master card'),),
              transferBuild(  Data(image: 'images2/dribble.png',name:'Dribble',date: '18 june, 2022',price: 220,type: 'master card'),),
              Row(
                children: [
                  Text('Yesterday'),
                ],
              ),
              transferBuild(Data(image: 'images2/behance.jpg',name: 'Behance',date:   '18 june, 2022',price: 220,type: 'Credit card'),),
              transferBuild(Data(image: 'images2/linkedin.png',name: 'Linkedin',date: '18 june, 2022',price: 220,type: 'Debit card'),),
              transferBuild(Data(image: 'images2/snapchat.png',name: 'Snapchat',date: '18 june, 2022',price: 220,type: 'Debit card'),),
              Row(
                children: [
                  Text('20 june,2022'),
                ],
              ),
              transferBuild(Data(image:'images2/skype.png',name: 'skype',date: '15 june, 2022',price: 220,type: 'Debit card'),),
              transferBuild(Data(image:'images2/figma.png',name: 'Figma',date: '15 june, 2022',price: 220,type: 'Credit card'),),
            ],),
        )
    );
  } }
class Data {
  String? image;
  String? name;
  String? date;
  double? price;
  String? type;

  Data({this.image, this.name, this.date,this.price, this.type});
}
Widget transferBuild(Data data) =>Column(
  children: [
    Padding(
      padding: const EdgeInsets.only(left:2.0),
      child: ListTile(
        leading:Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffdedee3),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image(image:AssetImage('${data.image}'),
              height: 40,),
          ),),
        title:  Text('${data.name}'),
        subtitle:Text('${data.date}') ,
        trailing: Column(children: [
          Text('- ${data.price} '),
          Text('${data.type}'),
        ],),),
    ),

  ],
);
