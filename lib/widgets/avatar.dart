import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String image;
  const Avatar({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: const Color(0xff4A435C),
      radius: 25,
      child: Image.asset(image),
    );
  }
}
