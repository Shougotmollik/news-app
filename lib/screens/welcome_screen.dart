import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:newsapp/screens/home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Lottie.asset(
              'assets/lottie/welcomeScreen.json',
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              height: 340,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    width: 1,
                    style: BorderStyle.none,
                  )),
              child: Column(
                spacing: 18,
                children: [
                  Text(
                    'Your Trusted Source for Real-Time News and Insights, Anytime, Anywhere',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Stay informed with breaking news and in-depth analysis from trusted sources.Explore diverse perspectives tailored to your unique interests and preferences.Get real-time updates and personalized alerts on the stories that matter most to you',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black45,
                    ),
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
