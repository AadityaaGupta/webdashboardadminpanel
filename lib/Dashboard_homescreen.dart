

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/appcolor.dart';


class MainHomeScreen extends StatefulWidget{
  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}
class _MainHomeScreenState extends State<MainHomeScreen> {
  @override
  Widget build(BuildContext context) {
  return Container(
      height: 500,
      child: Text('Home Screen',style: TextStyle(color: AppColor.black),),
    );
  }
}