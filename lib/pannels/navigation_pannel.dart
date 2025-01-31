import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationPannel extends StatelessWidget {
  const NavigationPannel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          SizedBox(
            height: 50,
            child: Image.asset('images/logo.png'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.orange, // Border color
                    width: 2, // Border width
                  ),
                ),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Image.asset('images/girl.png'),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Pooja Mishra',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Color(0xffAD6BEC), width: 2)),
                child: Text(
                  'Admin',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 65, right: 20, top: 10, bottom: 10),
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.home_filled),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Home',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 65, right: 20, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(CupertinoIcons.person_3),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Employees',
                  style: TextStyle(),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 65, right: 20, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.list),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Attendance',
                  style: TextStyle(),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 65, right: 20, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.calendar_month_outlined),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Summary',
                  style: TextStyle(),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 65, right: 20, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.info_outline),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Information',
                  style: TextStyle(),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: Color(0xffE3E9FE),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'WORKSPACES     ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Icon(Icons.add)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 100, right: 20, top: 10, bottom: 10),
            child: Row(
              children: [
                Text(
                  'Adstacks',
                ),
                Expanded(
                  child: SizedBox(),
                ),
                Icon(Icons.keyboard_arrow_down),
                SizedBox(
                  width: 5,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 100, right: 20, top: 10, bottom: 10),
            child: Row(
              children: [
                Text(
                  'Finance',
                ),
                Expanded(
                  child: SizedBox(),
                ),
                Icon(Icons.keyboard_arrow_down),
                SizedBox(
                  width: 5,
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 65),
            child: Row(
              children: [
                Icon(Icons.settings_outlined),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Settings',
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 65),
            child: Row(
              children: [
                Icon(Icons.logout),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Logout',
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
