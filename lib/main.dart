import 'package:flutter/material.dart';
//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
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
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
                          height: MediaQuery.of(context).size.height * 0.6,
                          width: width * 0.6,
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
                              onPressed: () {},
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
        )));
  }
}
