import 'package:flutter/material.dart';
import 'package:codecrafter_assignment/widgets/nav_bar_widget.dart';

class CoursesCategory extends StatefulWidget {
  final List<Map<String, dynamic>> categories = [
    {'title': 'Business', 'imagePath': 'assets/business.png', 'color': Colors.green[100]},
    {'title': 'Computing', 'imagePath': 'assets/computing.png', 'color': Colors.blue[100]},
    {'title': 'Medicine', 'imagePath': 'assets/medicine.png', 'color': Colors.pink[100]},
    {'title': 'Law', 'imagePath': 'assets/law.png', 'color': Colors.brown[100]},
    {'title': 'Engineering', 'imagePath': 'assets/engineering.png', 'color': Colors.cyan[100]},
    {'title': 'Finance', 'imagePath': 'assets/finance.png', 'color': Colors.green[100]},
    {'title': 'Health', 'imagePath': 'assets/health.png', 'color': Colors.teal[100]},
    {'title': 'Design', 'imagePath': 'assets/design.png', 'color': Colors.red[100]},
  ];

  CoursesCategory({Key? key}) : super(key: key);

  @override
  State<CoursesCategory> createState() => _CoursesCategoryState();
}

class _CoursesCategoryState extends State<CoursesCategory> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    var blockSizeHorizontal = screenWidth / 100;
    var blockSizeVertical = screenHeight / 100;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/logo-element.png',
              height: blockSizeVertical * 4, // 4% of screen height
              width: blockSizeHorizontal * 7, // 7% of screen width
            ),
            const Spacer(),
            const Icon(Icons.notification_add),
            const SizedBox(width: 5),
            const Icon(Icons.menu),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(blockSizeHorizontal * 4), // 4% padding on each side
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'What do you want to learn today? 💻',
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 28,
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
              SizedBox(
                height: blockSizeVertical * 60, // 60% of screen height
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: screenWidth < 600 ? 2 : 3, // Adjusted number of columns based on screen width
                    mainAxisSpacing: blockSizeVertical * 1.5, // 1.5% of screen height
                    crossAxisSpacing: blockSizeHorizontal * 2, // 2% of screen width
                    childAspectRatio: 3 / 4, // Adjusted aspect ratio
                  ),
                  itemCount: widget.categories.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: widget.categories[index]['color'],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  widget.categories[index]['title'],
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const Icon(Icons.keyboard_arrow_right_outlined),
                            ],
                          ),
                          AspectRatio(
                            aspectRatio: 9 / 10, // Adjusted according to  image aspect ratio
                            child: Image.asset(
                              widget.categories[index]['imagePath'],
                              fit: BoxFit.contain, 
                            ),
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}
