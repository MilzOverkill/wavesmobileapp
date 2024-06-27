import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String imagePath; // Path to the image
  final Color? color;

  CategoryCard({required this.title, required this.imagePath, required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,


      child: InkWell(
        onTap: () {
        },


        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Image.asset(imagePath, height: 50, //fit: BoxFit.cover
              ),
               
              
            ],
          ),
        ),
      ),
    );
  }
}
