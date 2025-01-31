import 'package:dashboard/widgets/avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UpdateWidget extends StatelessWidget {
  String title;
  List<String> images;
  bool isBirthday;
  String wishing;
  UpdateWidget(
      {super.key,
      required this.images,
      required this.title,
      required this.wishing,
      this.isBirthday = false});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Container(
      height: height * 0.25,
      width: width * 0.2,
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Color(0xff3C354A), borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                CupertinoIcons.sparkles,
                color: Colors.yellow.shade600,
                size: 20,
              ),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Icon(
                CupertinoIcons.sparkles,
                color: Colors.yellow.shade600,
                size: 18,
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      Container(
                          margin: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0xffAD6BEC), // Border color
                              width: 2, // Border width
                            ),
                          ),
                          child: Avatar(image: images[index])),
                      isBirthday
                          ? const Icon(
                              Icons.cake_rounded,
                              color: Colors.pink,
                            )
                          : Container(),
                    ],
                  );
                }),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Total',
                  style: TextStyle(
                      color: Color(0xff8374A8),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 30,
                ),
                const VerticalDivider(
                  width: 20,
                  thickness: 2,
                  color: Colors.grey,
                ),
                Text(
                  ' ${images.length}',
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const VerticalDivider(
                  width: 20,
                  thickness: 2,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffAD6BEC),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.telegram_rounded,
                  color: Colors.white,
                  size: 18,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  wishing,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
