import 'package:flutter/material.dart';
import 'package:orbitnews/models/category_model.dart';
import 'package:orbitnews/screens/widgets/custom_app_bar.dart';
import 'package:orbitnews/services/data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CategoryModel> categories = [];
  @override
  void initState() {
    super.initState();
    categories = getCategories();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
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
              SizedBox(height: 08),
              Text(
                'Explorer',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 12),
              SizedBox(
                height: 125,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder:
                      (context, index) => CategoriesTile(
                        image: categories[index].categoryImage!,
                        categoryName: categories[index].categoryName!,
                      ),
                ),
              ),
              Text(
                'Trending News',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 12),
              SizedBox(
                width: size.width,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) => TrendingNewsCard(),
                ),
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}

class TrendingNewsCard extends StatelessWidget {
  const TrendingNewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 140,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8),
            topLeft: Radius.circular(8),
          ),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                topLeft: Radius.circular(8),
              ),
              child: Image.asset(
                'assets/images/technology.jpg',
                height: 140,
                width: 140,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  spacing: 8,
                  children: [
                    Text(
                      'Threading news title will be display here',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                    Text(
                      'Threading news description section all about had will be display here',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoriesTile extends StatelessWidget {
  const CategoriesTile({
    super.key,
    required this.image,
    required this.categoryName,
  });
  final String image, categoryName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 18),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child: Image.asset(
              image,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(60),
            ),
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: Center(
              child: Text(
                categoryName,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Column(
                  children: [
                    SizedBox(height: 04),
                    SizedBox(
                      height: size.height * 0.035,
                      width: size.width * 0.8,
                      child: Text(
                        'All Sports Title display Here',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
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
                          color: Colors.black45,
                        ),
                      ),
                    ),
                  ],
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
