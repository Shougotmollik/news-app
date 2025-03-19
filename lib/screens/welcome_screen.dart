import 'package:flutter/material.dart';
import 'package:orbitnews/screens/home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/welcomeScreen.jpg',
            height: size.height * 1,
            width: size.width,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(18),
            width: size.width,
            margin: EdgeInsets.only(top: size.height / 1.8),
            decoration: BoxDecoration(
              color: Color(0xffEFF3EA),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(24),
                topLeft: Radius.circular(24),
              ),
            ),
            child: Column(
              spacing: 28,
              children: [
                Text(
                  'Get The Latest And Updated News Easily With Us',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                Image.asset(
                  'assets/images/newsIcon.png',
                  height: size.height * 0.15,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 2.0,
                    backgroundColor: Colors.deepOrangeAccent.shade200,
                    minimumSize: Size(size.width * 0.8, size.height * 0.06),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
