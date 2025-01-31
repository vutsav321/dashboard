import 'package:dashboard/widgets/calendar_widget.dart';
import 'package:dashboard/widgets/update_widget.dart';
import 'package:flutter/material.dart';

class UpdatePannel extends StatelessWidget {
  const UpdatePannel({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xff1B254B),
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(20))),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'GENERAL 10:00 AM TO 7:00 PM',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: CustomCalendarWidget(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: UpdateWidget(
                title: 'Today Birthday',
                images: ['images/girl.png', 'images/boy.png'],
                isBirthday: true,
                wishing: 'Birthday Wishing',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: UpdateWidget(
                title: 'Anniversary',
                images: ['images/girl.png', 'images/boy.png', 'images/boy.png'],
                wishing: 'Anniversary Wishing',
              ),
            )
          ],
        ),
      ),
    );
  }
}
