import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widget/Dashboard_homescreen.dart';
import 'widget/dashboard_adminpanel_left.dart';
import 'widget/dashboard_notificationhistory_screen.dart';
import 'widget/dashboard_sendnotification_screen.dart';
import 'widget/dashboard_settingsscreen.dart';
import 'widget/dashboard_usersscreen.dart';


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
     var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text("DashBoard Admin Panel"),
        ),
        body: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(right: BorderSide(color: Colors.grey))
              ),
              width: width*0.2,
              child: DashBoardAdminPanelLeft((index) {
                ChangeData(indexMain);
                setState(() {
                  indexMain = index;
                });
              }),
            ),
                Container(
                  width:width*.8,
                  child: ChangeData(indexMain),
                ),
              
          ],
        ));
  }
}
