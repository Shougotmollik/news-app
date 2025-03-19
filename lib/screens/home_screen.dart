import 'package:flutter/material.dart';
import 'package:orbitnews/screens/widgets/custom_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hottest News',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),

            SizedBox(
              height: size.height * 0.369,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) => HottestNewsCard(size: size),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HottestNewsCard extends StatelessWidget {
  const HottestNewsCard({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 3.0,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          height: size.height * 0.35,
          width: size.width * 0.6,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                child: Image.asset(
                  'assets/images/sports.jpg',
                  height: size.height * 0.18,
                  width: size.width,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 04),
              SizedBox(
                height: size.height * 0.035,
                width: size.width,
                child: Text(
                  'All Sports Title display Here',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 04),
              SizedBox(
                height: size.height * 0.08,
                width: size.width,
                child: Text(
                  'All Sports description display Here All Sports description display All Sports description display Here',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: size.height * 0.0458,
                  width: size.width * 0.18,
                  decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  child: Icon(Icons.arrow_forward, color: Colors.white70),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
