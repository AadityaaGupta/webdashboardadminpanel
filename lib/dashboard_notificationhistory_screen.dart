

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationHistoryScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
   return Container(
     child: Container(
          width: width*0.8,
              height: height,
          child: Text('Notification History',style: TextStyle(color: Colors.black),),
        ),
   );
  }

}