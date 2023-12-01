import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Dashboard_homescreen.dart';
import 'dashboard_left.dart';
import 'dashboard_notificationhistory_screen.dart';
import 'dashboard_sendnotification_screen.dart';
import 'dashboard_settingsscreen.dart';
import 'dashboard_usersscreen.dart';


class DashBoardAdminPanelScreen extends StatefulWidget {
  const DashBoardAdminPanelScreen({super.key});

  @override
  State<DashBoardAdminPanelScreen> createState() => _DashBoardAdminPanelScreenState();
}

class _DashBoardAdminPanelScreenState extends State<DashBoardAdminPanelScreen> {
  int indexMain = 0;

  Widget ChangeData(int index) {
    switch (index) {
      case 0:
      print("object");
        return MainHomeScreen();
      case 1:
       print("object1");
        return UsersScreen();
      case 2:
       print("object2");
        return NotificationHistoryScreen();
        case 3:
       print("object3");
        return SettingsScreen();
        case 4:
       print("object4");
        return SendNotificationScreen();
      default:
        MainHomeScreen();
    }
    return (Container(
      child: Text('dataaaa'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DashBoard Admin Panel"),
        ),
        body: Row(
          children: [
            Container(
              width: 150,
              child: DashBoardAdminPanelLeft((index) {
                ChangeData(indexMain);
                setState(() {
                  indexMain = index;
                });
              }),
            ),
            Container(
              width: 1,
              color: Colors.black,
              height: MediaQuery.of(context).size.width,
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  width:  MediaQuery.of(context).size.width - 160,
                  child: ChangeData(indexMain),
                ),
              ],
            ),
          ],
        ));
  }
}
