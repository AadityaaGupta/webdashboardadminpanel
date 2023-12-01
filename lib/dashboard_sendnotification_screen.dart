import 'package:flutter/material.dart';

class SendNotificationScreen extends StatefulWidget {
  const SendNotificationScreen({super.key});

  @override
  State<SendNotificationScreen> createState() => _SendNotificationScreenState();
}

class _SendNotificationScreenState extends State<SendNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(//Main Container
        width: width*0.8,
        height: height,
      
        child: Column(
      
            children: [
                          //Search field Starts from here
                Row(
                  children: [
                    Center(
                        child: 
                        Container(
                          decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  color: Colors.red,
                )
              ),
                              height: height*0.1,
                              width: width*0.5,
                              child: TextField(),
                        ),
                        
                        
                    ),
                  ],
                ),
      
            ],
      
        ),
      
      ),
    );

  }
}