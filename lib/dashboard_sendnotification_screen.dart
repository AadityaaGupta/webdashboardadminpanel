import 'package:flutter/material.dart';

class SendNotificationScreen extends StatefulWidget {
  const SendNotificationScreen({super.key});

  @override
  State<SendNotificationScreen> createState() => _SendNotificationScreenState();
}

class _SendNotificationScreenState extends State<SendNotificationScreen> {
  TextEditingController _field = TextEditingController();
  TextEditingController _field1 = TextEditingController();
  TextEditingController editingController = TextEditingController();





  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        //Main Container
        width: width * 0.8,
        height: height,

        child: Column(
          children: [
            //Search field Starts from here
            Row(
              children: [
                Center(
                  child: Container(
                   
                    height: height * 0.08,
                    width: width * 0.5,
                    // alignment: Alignment.center,
                    child: TextField(
                        
                      controller: _field,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(
                        Icons.search,
                        size: 30.0,
                      ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        hintText: 'Selected User',
                        hintStyle: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Center(
                  child: Container(
                    child: ElevatedButton(

                      child: Text('Pick',),
                      onPressed: () {



                      },
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
} 

class User
{
  
}
