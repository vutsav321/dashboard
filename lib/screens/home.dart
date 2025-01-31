import 'package:dashboard/pannels/home_pannel.dart';
import 'package:dashboard/pannels/update_pannel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      padding: EdgeInsets.only(left: 30),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
          color: Colors.grey.shade200),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Text(
                'Home',
                style: TextStyle(color: Colors.grey, fontSize: 25),
              ),
              Expanded(flex: 1, child: Container()),
              Container(
                width: width * 0.2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff2F293E)),
                child: const ListTile(
                  leading: Text(
                    '  Search',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  trailing: Icon(Icons.search, color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Icon(Icons.calendar_month),
              const SizedBox(
                width: 25,
              ),
              const Icon(Icons.notifications_outlined),
              const SizedBox(
                width: 30,
              ),
              const Icon(CupertinoIcons.power),
              const SizedBox(
                width: 120,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: const Color(0xff4A435C),
                  child: Image.asset('images/boy.png'),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(flex: 2, child: HomePannel()),
                SizedBox(
                  width: 20,
                ),
                UpdatePannel()
              ],
            ),
          )
        ],
      ),
    );
  }
}
