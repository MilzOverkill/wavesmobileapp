import 'package:codecrafter_assignment/screens/log_in.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 1), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    var blockSizeHorizontal = screenWidth / 100;
    var blockSizeVertical = screenHeight / 100;

    return Scaffold(
      backgroundColor: const Color(0xFF161D2D),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: blockSizeVertical * 5), // 5% of screen height

            // logo image
            Image.asset(
              'assets/logo-element.png',
              height: blockSizeVertical * 5, // 5% of screen height
              width: blockSizeHorizontal * 10, // 10% of screen width
            ),

            SizedBox(
              height: blockSizeVertical * 2, // 2% of screen height
            ),

            const Text(
              // main heading
              'Unlock Your Potential',
              style: TextStyle(
                fontFamily: 'Manrope',
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),

            SizedBox(
              height: blockSizeVertical * 2, // 2% of screen height
            ),

            const Text(
              // sub heading
              'With your Companion on the \n Learning Journey',
              style: TextStyle(
                fontFamily: 'Manrope',
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: blockSizeVertical * 2), // 2% of screen height

            //button
            ElevatedButton(
              onPressed: () {},

              // button design
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFADABFF),
                padding: EdgeInsets.symmetric(
                  horizontal: blockSizeHorizontal * 10, // 10% of screen width
                  vertical: blockSizeVertical * 2, // 2% of screen height
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),

              //button text
              child: const Text(
                'Start Studying',
                style: TextStyle(
                  fontFamily: 'Manrope',
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: blockSizeVertical * 10), // 10% of screen height

            Expanded(
              child: Image.asset(
                'assets/splash-screen-img.png',
                width: screenWidth * 0.8, // 80% of screen width
                fit: BoxFit.contain,
              ),
            )
          ],
        ),
      ),
    );
  }
}
