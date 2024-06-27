import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String title;
  final String instructor;
  final String duration;
  final String imageUrl;
  final String image2;

  const CourseCard({
    required this.title,
    required this.instructor,
    required this.duration,
    required this.imageUrl,
    required this.image2,
  });

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    var blockSizeHorizontal = screenWidth / 100;
    var blockSizeVertical = screenHeight / 100;

    return Column(
      children: [
        Card.filled(
          color: Colors.transparent,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(blockSizeHorizontal * 1.5), // 1.5% of screen width
                  child: Image.network(
                    imageUrl,
                    height: blockSizeVertical * 12, // 12% of screen height
                    width: blockSizeHorizontal * 20, // 20% of screen width
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.all(blockSizeHorizontal * 4), // 4% of screen width
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: blockSizeHorizontal * 3.5, // 3.5% of screen width
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: blockSizeVertical * 1), // 1% of screen height
                      Row(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              image2,
                              width: blockSizeHorizontal * 4, // 4% of screen width
                              height: blockSizeVertical * 2, // 2% of screen height
                            ),
                          ),
                          SizedBox(width: blockSizeHorizontal * 1), // 1% of screen width
                          Text(
                            instructor,
                            style: TextStyle(
                              fontSize: blockSizeHorizontal * 2.5, // 2.5% of screen width
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: blockSizeVertical * 1), // 1% of screen height
        Padding(
          padding: EdgeInsets.only(left: blockSizeHorizontal * 2), // 2% of screen width
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Design', style: TextStyle(fontSize: blockSizeHorizontal * 3)), // 3% of screen width
              SizedBox(width: blockSizeHorizontal * 1), // 1% of screen width
              Icon(Icons.timer, size: blockSizeHorizontal * 4), // 4% of screen width
              SizedBox(width: blockSizeHorizontal * 1), // 1% of screen width
              Text(duration, style: TextStyle(fontSize: blockSizeHorizontal * 3)), // 3% of screen width
            ],
          ),
        ),
      ],
    );
  }
}
