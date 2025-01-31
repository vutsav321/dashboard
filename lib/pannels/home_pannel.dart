import 'package:dashboard/widgets/allproject_widget.dart';
import 'package:dashboard/widgets/top_creator_widget.dart';
import 'package:flutter/material.dart';

class HomePannel extends StatelessWidget {
  const HomePannel({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    List<Creator> creator = [
      Creator(
          name: '@maddison_c21',
          imageUrl: 'images/profile_girl.jpg',
          artworkNumber: 9821,
          rating: 4),
      Creator(
          name: '@karl.will02',
          imageUrl: 'images/profile_man.jpg',
          artworkNumber: 7032,
          rating: 3),
      Creator(
          name: '@maddison_c21',
          imageUrl: 'images/profile_girl.jpg',
          artworkNumber: 9821,
          rating: 4),
      Creator(
          name: '@maddison_c21',
          imageUrl: 'images/profile_girl.jpg',
          artworkNumber: 9821,
          rating: 4),
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                width: width,
                height: height * 0.23,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'images/project.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 25,
                left: 40,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Learn More.',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Color(0xff2F293E)),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 650) {
                return Row(
                  children: [
                    Expanded(flex: 7, child: AllProjectsWidget()),
                    SizedBox(width: 20),
                    Expanded(
                        flex: 6, child: TopCreatorWidget(creators: creator)),
                  ],
                );
              } else {
                return Column(
                  children: [
                    AllProjectsWidget(),
                    SizedBox(
                      height: 10,
                    ),
                    TopCreatorWidget(creators: creator),
                  ],
                );
              }
            },
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            width: width,
            height: height * 0.28,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'images/chart.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
