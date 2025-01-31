import 'package:dashboard/pannels/navigation_pannel.dart';
import 'package:dashboard/screens/home.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        child: Container(
            margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 40),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(flex: 1, child: NavigationPannel()),
                Expanded(flex: 4, child: Home())
              ],
            )),
      ),
    );
  }
}
