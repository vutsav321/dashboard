import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TopCreatorWidget extends StatelessWidget {
  final List<Creator> creators;

  TopCreatorWidget({required this.creators});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xff1B254B),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 12, bottom: 15, left: 10),
                child: const Text(
                  'Top Creators',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding: const EdgeInsets.all(8.0),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'Artwork',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'Rating',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: Color(0xff111C44),
            ),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: creators.length,
              itemBuilder: (context, index) {
                final creator = creators[index];
                return Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.09,
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 10,
                              backgroundImage: AssetImage(creator.imageUrl),
                            ),
                            SizedBox(width: 5),
                            Text(creator.name,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12)),
                          ],
                        ),
                      ),
                      // Expanded(child: Container()),
                      Text(
                        creator.artworkNumber.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      Expanded(child: Container()),
                      Container(
                        width: 40,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Color(0xff273156),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: FractionallySizedBox(
                          alignment: Alignment.centerLeft,
                          widthFactor: creator.rating / 5,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff7551FF),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Creator {
  final String name;
  final String imageUrl;
  final int artworkNumber;
  final double rating;

  Creator({
    required this.name,
    required this.imageUrl,
    required this.artworkNumber,
    required this.rating,
  });
}
