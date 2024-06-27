import 'package:flutter/material.dart';
import '../widgets/course_card_widget.dart';

class CourseList extends StatelessWidget {
  const CourseList({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    var blockSizeHorizontal = screenWidth / 100;
    var blockSizeVertical = screenHeight / 100;

    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.all(blockSizeHorizontal * 4), // 4% padding on each side
        children: [
          Text(
            'Design',
            style: TextStyle(
              fontFamily: 'Manrope',
              fontSize: blockSizeHorizontal * 7, // 7% of screen width
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: blockSizeVertical * 2), // 2% of screen height
          TextField(
            decoration: InputDecoration(
              hintText: 'Search for a course',
              suffixIcon: const Icon(Icons.arrow_forward),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          SizedBox(height: blockSizeVertical * 2), // 2% of screen height
          Row(
            children: [
              Text(
                '37 Courses',
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: blockSizeHorizontal * 2.5, // 2.5% of screen width
                  fontWeight: FontWeight.w700,
                ),
              ),
              Spacer(),
              Icon(Icons.filter_list, size: blockSizeHorizontal * 4), // 4% of screen width
              SizedBox(width: blockSizeHorizontal), // 1% of screen width
              Text(
                'Filter',
                style: TextStyle(
                  fontSize: blockSizeHorizontal * 2.5, // 2.5% of screen width
                ),
              ),
            ],
          ),
          SizedBox(height: blockSizeVertical * 2), // 2% of screen height
          CourseCard(
            title: 'Advanced Prototyping and Interaction Design',
            image2: 'assets/tutor-img01.png',
            instructor: 'Arash Anadzadeh',
            duration: '1hr 25m',
            imageUrl: 'https://stream-blog-v2.imgix.net/blog/wp-content/uploads/d1946bea6da66934c5e2df181ad07d81/Frameio-Clone-1200x630px.png?auto=format&auto=compress', 
          ),
          Divider(
            color: Colors.grey,
            height: blockSizeVertical * 2, // 2% of screen height
            thickness: 2,
            indent: blockSizeHorizontal * 4, // 4% of screen width
            endIndent: blockSizeHorizontal * 4, // 4% of screen width
          ),
          CourseCard(
            title: 'Design Thinking Principles for Non-Designers',
            image2: 'assets/tutor-img02.png',
            instructor: 'Catherine Stolarski',
            duration: '40m',
            imageUrl: 'https://stream-blog-v2.imgix.net/blog/wp-content/uploads/d1946bea6da66934c5e2df181ad07d81/Frameio-Clone-1200x630px.png?auto=format&auto=compress', 
          ),
          Divider(
            color: Colors.grey,
            height: blockSizeVertical * 2, // 2% of screen height
            thickness: 2,
            indent: blockSizeHorizontal * 4, // 4% of screen width
            endIndent: blockSizeHorizontal * 4, // 4% of screen width
          ),
          CourseCard(
            title: 'UX/UI Portfolio: Designing Amazing Case Studies',
            image2: 'assets/tutor-img03.png',
            instructor: 'Patricia Reiners',
            duration: '2h 41m',
            imageUrl: 'https://stream-blog-v2.imgix.net/blog/wp-content/uploads/d1946bea6da66934c5e2df181ad07d81/Frameio-Clone-1200x630px.png?auto=format&auto=compress', 
          ),
          Divider(
            color: Colors.grey,
            height: blockSizeVertical * 2, // 2% of screen height
            thickness: 2,
            indent: blockSizeHorizontal * 4, // 4% of screen width
            endIndent: blockSizeHorizontal * 4, // 4% of screen width
          ),
          CourseCard(
            title: 'Figma Prototyping and Animations',
            image2: 'assets/tutor-img04.png',
            instructor: 'Ljubomir Bardzic',
            duration: '1h 18m',
            imageUrl: 'https://stream-blog-v2.imgix.net/blog/wp-content/uploads/d1946bea6da66934c5e2df181ad07d81/Frameio-Clone-1200x630px.png?auto=format&auto=compress', 
          ),
          Divider(
            color: Colors.grey,
            height: blockSizeVertical * 2, // 2% of screen height
            thickness: 2,
            indent: blockSizeHorizontal * 4, // 4% of screen width
            endIndent: blockSizeHorizontal * 4, // 4% of screen width
          ),
          CourseCard(
            title: 'Prototyping with ProtoPie',
            image2: 'assets/tutor-img05.png',
            instructor: 'Ljubomir Bardzic',
            duration: '1h 18m',
            imageUrl: 'https://stream-blog-v2.imgix.net/blog/wp-content/uploads/d1946bea6da66934c5e2df181ad07d81/Frameio-Clone-1200x630px.png?auto=format&auto=compress', 
          ),
          Divider(
            color: Colors.grey,
            height: blockSizeVertical * 2, // 2% of screen height
            thickness: 2,
            indent: blockSizeHorizontal * 4, // 4% of screen width
            endIndent: blockSizeHorizontal * 4, // 4% of screen width
          ),
          CourseCard(
            title: 'Figma:Interactive components',
            image2: 'assets/tutor-img06.png',
            instructor: 'Bruno Saez Lopez',
            duration: '57m',
            imageUrl: 'https://stream-blog-v2.imgix.net/blog/wp-content/uploads/d1946bea6da66934c5e2df181ad07d81/Frameio-Clone-1200x630px.png?auto=format&auto=compress', 
          ),
        ],
      ),
    );
  }
}
