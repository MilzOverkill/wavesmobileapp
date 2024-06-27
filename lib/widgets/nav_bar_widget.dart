import 'package:codecrafter_assignment/screens/course_detail.dart';
import 'package:codecrafter_assignment/screens/courses.dart';
import 'package:flutter/material.dart';

class MilniScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'), 
      ),
      body: Center(
        child: Text('Courses Screen'), 
      ),
    );
  }
}

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    if (_selectedIndex != index) {
      setState(() {
        _selectedIndex = index;
      });

      // Navigate to MilniScreen 
      if (index == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CourseList()),
        );
      }

      // Navigate to CourseDetailScreen 
      if (index == 3) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CourseDetailScreen()),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 362,
      decoration: const BoxDecoration(
        color: Color(0xFF161D2D),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/home-inactive.png',
              height: 18,
              width: 18,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/courses-active.png',
              height: 18,
              width: 18,
            ),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/podcasts-inactive.png',
              height: 18,
              width: 18,
            ),
            label: 'Podcasts',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/progress-inactive.png',
              height: 18,
              width: 18,
            ),
            label: 'Progress',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFFADABFF),
        unselectedItemColor: Colors.white,
        backgroundColor: Color(0xFF161D2D),
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
