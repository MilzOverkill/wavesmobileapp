import 'package:flutter/material.dart';

class CourseDetailScreen extends StatelessWidget {
  const CourseDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    var blockSizeHorizontal = screenWidth / 100;
    var blockSizeVertical = screenHeight / 100;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(blockSizeHorizontal * 4), // 4% of screen width
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  // image youtube video
                  SizedBox(
                    height: blockSizeVertical * 26, // 26% of screen height
                    width: screenWidth,
                    child: Image.asset('assets/youtube.jpg', fit: BoxFit.cover),
                  ),
                ],
              ),
              SizedBox(height: blockSizeVertical * 2), // 2% of screen height

              // design text box
              Container(
                width: blockSizeHorizontal * 11, // 11% of screen width
                height: blockSizeVertical * 2, // 2% of screen height
                decoration: BoxDecoration(
                  color: const Color(0xFF161D2D),
                  borderRadius: BorderRadius.circular(blockSizeHorizontal * 2), // 2% of screen width
                ),
                child: const Center(
                  child: Text(
                    'Design',
                    style: TextStyle(
                      fontSize: 8,
                      color: Color(0xFFADABFF),
                    ),
                  ),
                ),
              ),

              // main title
              Text(
                'Advanced Prototyping and Interaction Design',
                style: TextStyle(
                  fontSize: blockSizeHorizontal * 7, // 7% of screen width
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: blockSizeVertical * 1), // 1% of screen height

              Row(
                children: [
                  // author image
                  ClipOval(
                    child: Image.asset(
                      'assets/tutor-img01.png',
                      width: blockSizeHorizontal * 5, // 5% of screen width
                      height: blockSizeVertical * 2.5, // 2.5% of screen height
                    ),
                  ),
                  SizedBox(width: blockSizeHorizontal * 1), // 1% of screen width

                  // author name
                  Text(
                    'Arash Ahadzadeh',
                    style: TextStyle(
                      fontSize: blockSizeHorizontal * 3.5, // 3.5% of screen width
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),

              SizedBox(height: blockSizeVertical * 2), // 2% of screen height

              // subtitle
              Text(
                'About this course',
                style: TextStyle(
                  fontSize: blockSizeHorizontal * 5, // 5% of screen width
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: blockSizeVertical * 1), // 1% of screen height

              // paragraph
              Text(
                'Do you want to master prototyping and interaction design in Figma but don\'t know where to start? This course will allow you to develop your prototyping and interaction design skills, and you can add Interaction Designer to your CV and start getting clients for your skills.',
                style: TextStyle(fontSize: blockSizeHorizontal * 3.5), // 3.5% of screen width
              ),
              SizedBox(height: blockSizeVertical * 1), // 1% of screen height

              // bold view lesson text
              Row(
                children: [
                  Text(
                    'View Lessons',
                    style: TextStyle(
                      fontSize: blockSizeHorizontal * 3.5, // 3.5% of screen width
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: blockSizeHorizontal * 0.5), // 0.5% of screen width
                  Icon(
                    Icons.arrow_forward,
                    size: blockSizeHorizontal * 4.5, // 4.5% of screen width
                  ),
                ],
              ),

              SizedBox(height: blockSizeVertical * 2), // 2% of screen height

              // info card details
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _infoCard('25+', 'Lessons', blockSizeHorizontal, blockSizeVertical),
                  _infoCard('150', 'Points', blockSizeHorizontal, blockSizeVertical),
                  _infoCard('4.6', 'Ratings', blockSizeHorizontal, blockSizeVertical),
                ],
              ),
              SizedBox(height: blockSizeVertical * 3), // 3% of screen height

              // container with student icons
              Center(
                child: Container(
                  height: blockSizeVertical * 13, // 13% of screen height
                  width: blockSizeHorizontal * 82, // 82% of screen width
                  decoration: BoxDecoration(
                    color: const Color(0xFFE8E9F2),
                    borderRadius: BorderRadius.circular(blockSizeHorizontal * 2.5), // 2.5% of screen width
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: blockSizeHorizontal * 4), // 4% of screen width
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: blockSizeVertical * 1.5), // 1.5% of screen height
                        Row(
                          children: [
                            CircleAvatar(
                                backgroundImage: AssetImage('assets/student-img01.png')),
                            SizedBox(width: blockSizeHorizontal * 1), // 1% of screen width
                            CircleAvatar(
                                backgroundImage: AssetImage('assets/student-img02.png')),
                            SizedBox(width: blockSizeHorizontal * 1), // 1% of screen width
                            CircleAvatar(
                                backgroundImage: AssetImage('assets/student-img03.png')),
                            SizedBox(width: blockSizeHorizontal * 1), // 1% of screen width
                            CircleAvatar(
                                backgroundImage: AssetImage('assets/student-img04.png')),
                          ],
                        ),
                        SizedBox(height: blockSizeVertical * 1), // 1% of screen height
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: blockSizeHorizontal * 3, // 3% of screen width
                              color: const Color(0xFF161D2D),
                            ),
                            children: [
                              TextSpan(
                                text: '5000+ Students ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: 'have already\njoined this course and loved it!',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: blockSizeVertical * 3), // 3% of screen height

              Center(
                child: SizedBox(
                  width: blockSizeHorizontal * 82, // 82% of screen width
                  height: blockSizeVertical * 7, // 7% of screen height
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: blockSizeHorizontal * 8, // 8% of screen width
                          vertical: blockSizeVertical * 2.5), // 2.5% of screen height
                      backgroundColor: const Color(0xFF161D2D),
                    ),
                    child: Text(
                      'Join this Course',
                      style: TextStyle(
                        color: const Color(0xFFADABFF),
                        fontSize: blockSizeHorizontal * 3.5, // 3.5% of screen width
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _infoCard(String value, String label, double blockSizeHorizontal, double blockSizeVertical) {
    return Container(
      height: blockSizeVertical * 10, // 10% of screen height
      width: blockSizeHorizontal * 26, // 26% of screen width
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE8E9F2), width: blockSizeHorizontal * 0.25), // 0.25% of screen width
        borderRadius: BorderRadius.circular(blockSizeHorizontal * 3), // 3% of screen width
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            style: TextStyle(
              fontSize: blockSizeHorizontal * 5, // 5% of screen width
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: blockSizeVertical * 0.5), // 0.5% of screen height
          Text(
            label,
            style: TextStyle(
              fontSize: blockSizeHorizontal * 4, // 4% of screen width
              color: const Color(0xFF161D2D),
            ),
          ),
        ],
      ),
    );
  }
}
