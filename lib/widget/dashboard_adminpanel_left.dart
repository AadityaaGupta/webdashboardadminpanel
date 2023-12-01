import 'dart:math';
import 'package:admin_panel/Login.dart';
import 'package:admin_panel/utils/appcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashBoardAdminPanelLeft extends StatefulWidget {
  Function(int) onClick;
  DashBoardAdminPanelLeft(this.onClick);
  @override
  State<DashBoardAdminPanelLeft> createState() =>
      _DashBoardAdminPanelLeftState();
}

class DashboardAdminPanelLeft {
  String title;
  DashboardAdminPanelLeft(this.title);
}

List<DashboardAdminPanelLeft> DashboardAdminPanelLeftList = [
  DashboardAdminPanelLeft('Home'),
  DashboardAdminPanelLeft('Users'),
  DashboardAdminPanelLeft('Notification History'),
  DashboardAdminPanelLeft('Settings'),
  DashboardAdminPanelLeft('Send Notification'),
];

class _DashBoardAdminPanelLeftState extends State<DashBoardAdminPanelLeft> {
  int SelectIndex = 0;
  int _selectedIndex = 0;

  _onSelected(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        SizedBox(
            child: Column(
          children: [
            Container(
              width: 100, height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/imgg.jpg"),
                      fit: BoxFit.cover)),
              // child: Image.asset(),
            ),
            Text(
              "Flutter",
              style: TextStyle(
                  color: AppColor.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )
          ],
        )),
        SizedBox(
          height: 30,
        ),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: DashboardAdminPanelLeftList.length,
              itemBuilder: (context, index) {
                return Container(
                    child: InkWell(
                        child: Column(
                          children: [
                            InkWell(
                              child: SizedBox(
                                // width: MediaQuery.of(context).size.width,
                                // height: 60,
                                child: Container(
                                  width: 150,
                                  height: 50,
                              alignment: Alignment.center,
                                decoration: BoxDecoration(
                                      color: _selectedIndex != null &&
                                        _selectedIndex == index
                                    ? AppColor.primaryColor
                                    : AppColor.white,
                                  borderRadius: BorderRadius.circular(15)
                                ),
                                  child: Text(
                                      DashboardAdminPanelLeftList[index].title,
                                      style: TextStyle(
                                        color: AppColor.black,
                                      )),
                                ),
                              ),
                              onTap: () {
                                widget.onClick.call(index);
                                setState(() {
                                  SelectIndex = index;
                                  _onSelected(index);
                                  print("object");
                                });
                              },
                            ),SizedBox(height: 10,)
                          ],
                        ),
                        onTap: () {}));
              }),
        ),
        InkWell(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.logout,
                color: AppColor.bordercolor,
              ),
              Text(
                "SignOut",
                style: TextStyle(color: AppColor.blue, fontSize: 18),
              )
            ],
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Login()));
          },
        )
      ],
    ));
  }
}
