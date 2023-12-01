


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width*0.8,
              height: height,
      child:  Text('Settings Screen',style: TextStyle(color: Colors.black),),
    );
  }

}