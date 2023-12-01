

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MainHomeScreen extends StatefulWidget{
  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}
class _MainHomeScreenState extends State<MainHomeScreen> {
  @override
  Widget build(BuildContext context) {
  return Container(
      height: 500,
      color: Colors.amber,
      child: Text('Home Screen',style: TextStyle(color: Colors.black),),
    );
  }
}