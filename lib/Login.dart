import 'dart:html';

import 'package:admin_panel/dashboard_admin_panel.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
            body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: height,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/img.jpg"),
                      fit: BoxFit.cover)),
              child: Column(
                children: [
                  SizedBox(
                    height: 80.0,
                  ),
                  Center(
                    //Login design starts from here
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          padding: EdgeInsets.only(top: height * 0.10),
                          height: height * 0.7,
                          width: width * 0.5,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/img.jpg"),
                                  fit: BoxFit.cover,
                                  opacity: 0.5,
                                  ),
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 6.0,
                                  spreadRadius: 2.0,
                                  offset: Offset(0.0, 0.0),
                                )
                              ]),
                          child: Column(children: <Widget>[
                            Center(
                              child: Text(
                                'Login Form',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Center(
                              child: SizedBox(
                                width: width * 0.4,
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Enter Username",
                                      hintStyle: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Center(
                              child: SizedBox(
                                width: width * 0.4,
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Enter Pasword",
                                      hintStyle: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Center(
                                child: ElevatedButton(
                              onPressed: () {
                              Navigator.push(context, 
                              MaterialPageRoute(builder: (context)=> DashBoardAdminPanelScreen()
                              )

                              );
                              },
                              child: Text('Login',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  )),
                            )),
                          ])),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  
  }
}




//  var width = MediaQuery.of(context).size.width;
//     var height = MediaQuery.of(context).size.height;
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(//Main Container
//         height: height,
//         width: width,
      
//         child: Column(
      
//             children: [
//                           //Search field Starts from here
//                 Row(
//                   children: [
//                     Center(
//                       child: Padding(
//                         padding: EdgeInsets.all(8.0),
//                         child: 
//                         Container(
//                               height: height*0.2,
//                               width: width*0.5,
//                               child: TextField(),
//                         ),
                        
//                         ),
//                     ),
//                   ],
//                 ),
      
//             ],
      
//         ),
      
//       ),
//     );
 