import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UsersScreen extends StatefulWidget {
  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class Users {
  String? user;
  String? status;
  String? phonenumber;
  String? position;
  String? department;
  String? activity;
  bool? valuee;

  Users(this.user, this.status, this.phonenumber, this.position,
      this.department, this.activity, this.valuee);
}

List<Users> UsersList = [
  Users('Andrew', 'Active', '+790000101000', 'Devloper', 'Software Devlopment',
      '2 days Ago', false),
  Users('Bojangles', 'Active', '+790000101000', 'Devloper', 'Software Devlopment',
      '2 days Ago', false),
  Users('Harsh', 'Active', '+790000101000', 'Devloper', 'Software Devlopment',
      '2 days Ago', false),
  Users('Aaditya', 'Active', '+790000101000', 'Devloper', 'Software Devlopment',
      '2 days Ago', false),
  Users('Pinky', 'Active', '+790000101000', 'Devloper', 'Software Devlopment',
      '2 days Ago', false),
  Users('Pihu', 'Active', '+790000101000', 'Devloper', 'Software Devlopment',
      '2 days Ago', false),
  Users('Megha', 'Active', '+790000101000', 'Devloper', 'Software Devlopment',
      '2 days Ago', false),
];

class _UsersScreenState extends State<UsersScreen> {
  String selected = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'search',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black))),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          width: 80,
          height: 25,
          child: InkWell(
            onTap: () {},
            child: Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.filter_list),
                SizedBox(
                  width: 5,
                ),
                Text('Filter', style: TextStyle(color: Colors.black)),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(border: Border(bottom: BorderSide(color: const Color.fromARGB(255, 218, 213, 213)))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(''),
              Text(
                "User",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "Status",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "Phone Number",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "Position",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "Department",
                style: TextStyle(color: Colors.black),
              ),
                Text(
                "Activity",
                style: TextStyle(color: Colors.black),
              ),
              Text(''),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height - 230,
          child: ListView.builder(
              itemCount: UsersList.length,
              itemBuilder: (context, index) {
                return Expanded(
                    child: SizedBox(
                  child: Container(
                      child: Expanded(
                    child: CheckboxListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(UsersList[index].user.toString()),
                          Text(UsersList[index].status.toString()),
                          Text(UsersList[index].phonenumber.toString()),
                          Text(UsersList[index].position.toString()),
                          Text(UsersList[index].department.toString()),
                          Text(UsersList[index].activity.toString()),
                          Icon(Icons.more)
                        ],
                      ),
                      value: UsersList[index].valuee,
                      onChanged: (value) {
                        setState(() {
                          for (var element in UsersList) {
                            element.valuee = false;
                          }
                          UsersList[index].valuee = value;
                          selected =
                              "${UsersList[index].user}, ${UsersList[index].valuee}";
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                  )),
                ));
              }),
        ),
      ])),
    );
  }
}
