import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DashBoardAdminPanelLeft extends StatefulWidget {
  Function(int ) onClick;
  DashBoardAdminPanelLeft(this.onClick);
  @override
  State<DashBoardAdminPanelLeft> createState() => _DashBoardAdminPanelLeftState();
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
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: DashboardAdminPanelLeftList.length,
          itemBuilder: (context, index) {
            return Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: const Color.fromARGB(255, 191, 186, 186))),
                child: InkResponse(
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          height: 60,
                          child: InkWell(
                            child: Text(DashboardAdminPanelLeftList[index].title,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18)),
                            onTap: () {
                              widget.onClick.call(index);
                              setState(() {
                                SelectIndex = index;
                                print("object");
                              });
                            },
                          ),
                        )
                      ],
                    ),
                    onTap: () {}));
          }),
    );
  }
}
