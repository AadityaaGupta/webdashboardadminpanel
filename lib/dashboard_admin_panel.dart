import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Dashboard_homescreen.dart';
import 'dashboard_adminpanel_left.dart';
import 'dashboard_notificationhistory_screen.dart';
import 'dashboard_sendnotification_screen.dart';
import 'dashboard_settingsscreen.dart';
import 'dashboard_usersscreen.dart';

class DashBoardAdminPanelScreen extends StatefulWidget {
  const DashBoardAdminPanelScreen({super.key});

  @override
  State<DashBoardAdminPanelScreen> createState() =>
      _DashBoardAdminPanelScreenState();
}

class _DashBoardAdminPanelScreenState extends State<DashBoardAdminPanelScreen> {
  int indexMain = 0;

  Widget ChangeData(int index) {
    switch (index) {
      case 0:
        return Text('data');
       // return MainHomeScreen();
      case 1:
         return Text('data');
        // return UsersScreen();
      case 2:
         return Text('data');
        // return NotificationHistoryScreen();
      case 3:
        return Text('data');
        // return SettingsScreen();
      case 4:
      //  return Text('data');
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
              height: height,
              width: width*0.2,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  color: Colors.black
                )
              ),
              child: Container(
                width: width*0.2,
                child: DashBoardAdminPanelLeft((index) {
                  ChangeData(indexMain);
                  setState(() {
                    indexMain = index;
                  });
                }),
              ),
            ),
          
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  color: Colors.red,
                )
              ),
            
              width: width*0.8,
              height: height,
              child: ChangeData(indexMain),
            ),
          ],
        ));
  }
}
