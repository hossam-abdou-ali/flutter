import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Data {
  String? image;
  String? name;
  String? date;
  double? price;
  String? type;
  var container;
  Data({this.image, this.name, this.date,this.price, this.type,this.container});
}
Widget transferBuild(Data data) =>Column(
  children: [
    Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(9),
                  color: data.container,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Image(image:AssetImage('${data.image}'),
                    height: 20,),
                ),),
            ),
            SizedBox(width: 3,),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${data.name}',style: TextStyle(fontWeight: FontWeight.bold,),),
                Text('${data.date}'),
              ],),
          ],
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text('-\$ ${data.price?.toStringAsFixed(2)} ',style: TextStyle(fontWeight: FontWeight.bold,),),
            Text('${data.type}'),
          ],),
      ],),
    SizedBox(height: 6,),



  ],
);



