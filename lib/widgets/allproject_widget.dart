import 'package:flutter/material.dart';

class AllProjectsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xff111C44),
      ),
      padding: EdgeInsets.only(top: 15, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'All Projects',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ListView(
            padding: EdgeInsets.only(bottom: 2),
            shrinkWrap: true,
            children: [
              ProjectTile(
                imageUrl:
                    'https://cdn.pixabay.com/photo/2016/04/04/14/12/monitor-1307227_1280.jpg',
                title: 'Technology behind the Blockchain',
                subtitle: 'Project #1',
                isSelected: true,
              ),
              ProjectTile(
                imageUrl:
                    'https://media.istockphoto.com/id/594907500/photo/closeup-electronic-circuit-board.jpg?s=2048x2048&w=is&k=20&c=oC5jZmRQW5U8oOinOEH5GjjOMOZlbRjDFLOv8vmcUPY=',
                title: 'Technology Behind Blockchain',
                subtitle: 'Project #1',
              ),
              ProjectTile(
                imageUrl:
                    'https://media.istockphoto.com/id/1352603244/photo/shot-of-an-unrecognizable-businessman-working-on-his-laptop-in-the-office.jpg?s=1024x1024&w=is&k=20&c=mTABddPRSU1r_hCBpknMjJbCIrJAicjjXGSU42rx-YI=',
                title: 'Technology Behind Blockchain',
                subtitle: 'Project #1',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProjectTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final bool isSelected;

  ProjectTile({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      margin: isSelected
          ? EdgeInsets.symmetric(horizontal: 8)
          : EdgeInsets.symmetric(horizontal: 12),
      height: isSelected ? height * 0.09 : height * 0.08,
      child: Card(
        color: isSelected ? Color(0xffC13750) : Color(0xff1B254B),
        child: ListTile(
          leading: Container(
            width: width * 0.03,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                imageUrl,
                fit: BoxFit.fill,
              ),
            ),
          ),
          title: Text(
            title,
            style: isSelected
                ? TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)
                : TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
          ),
          subtitle: Row(
            children: [
              Text(
                subtitle,
                style: isSelected
                    ? TextStyle(
                        fontSize: 9,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)
                    : TextStyle(
                        fontSize: 7,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
              ),
              Text(
                " • ",
                style: TextStyle(
                  color: isSelected ? Colors.black : Colors.white,
                  fontSize: 12,
                ),
              ),
              Text(
                "See project details",
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 9,
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white),
              )
            ],
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.edit,
              color: isSelected ? Colors.white : Colors.grey,
              size: isSelected ? 18 : 12,
            ),
            onPressed: () {
              // Handle edit action
            },
          ),
        ),
      ),
    );
  }
}
