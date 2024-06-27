import 'package:flutter/material.dart';
import 'courses_category.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    var blockSizeHorizontal = screenWidth / 100;
    var blockSizeVertical = screenHeight / 100;

    return Scaffold(
      backgroundColor: const Color(0xFF161D2D),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: blockSizeHorizontal * 5), // 5% padding on each side
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: blockSizeVertical * 5), // 5% of screen height

                Center(
                  child: Image.asset(
                    'assets/logo-text.png',
                    height: blockSizeVertical * 6, // 6% of screen height
                    width: blockSizeHorizontal * 20, // 20% of screen width
                  ),
                ),

                SizedBox(height: blockSizeVertical * 8), // 8% of screen height

                const Text(
                  'Log in to ',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),

                const Text(
                  'Start Learning',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    color: Color(0xFFADABFF),
                  ),
                ),

                SizedBox(height: blockSizeVertical * 3), // 3% of screen height

                SizedBox(
                  height: blockSizeVertical * 6, // 6% of screen height
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      labelText: 'Email Address',
                    ),
                  ),
                ),

                SizedBox(height: blockSizeVertical * 2), // 2% of screen height

                SizedBox(
                  height: blockSizeVertical * 6, // 6% of screen height
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      labelText: 'Password',
                    ),
                  ),
                ),

                SizedBox(height: blockSizeVertical * 1.5), // 1.5% of screen height

                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot your password',
                    style: TextStyle(
                      color: Color(0xFFADABFF),
                    ),
                  ),
                ),

                SizedBox(height: blockSizeVertical * 10), // 10% of screen height

                SizedBox(
                  width: double.infinity,
                  height: blockSizeVertical * 7, // 7% of screen height
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CoursesCategory()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFADABFF),
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Color(0xFF161D2D),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: blockSizeVertical * 3), // 3% of screen height

                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account yet?',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 2),
                    Text(
                      'Create Account!',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Color(0xFFADABFF),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
