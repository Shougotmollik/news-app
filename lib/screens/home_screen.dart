import 'package:flutter/material.dart';
import 'package:orbitnews/models/category_model.dart';
import 'package:orbitnews/screens/widgets/trending_news_card.dart';
import 'package:orbitnews/screens/widgets/categories_tile.dart';
import 'package:orbitnews/screens/widgets/custom_app_bar.dart';
import 'package:orbitnews/screens/widgets/hottest_news_card.dart';
import 'package:orbitnews/services/data.dart';
import 'package:orbitnews/services/news_services.dart';

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
      body: FutureBuilder<List<dynamic>>(
        future: NewsService.fetchNews(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('error ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No news found'));
          } else {
            final articles = snapshot.data!;

            return Padding(
              padding: const EdgeInsets.all(14.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hottest News',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    SizedBox(
                      height: size.height * 0.43,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          final article = articles[index];
                          // Fallbacks in case data is missing
                          final imageUrl =
                              article['urlToImage'] ??
                              'https://via.placeholder.com/150';
                          final title = article['title'] ?? 'No Title';
                          final description =
                              article['description'] ?? 'No Description';
                          return HottestNewsCard(
                            size: size,
                            newsImage: imageUrl,
                            newsTitle: title,
                            newsDescription: description,
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 08),
                    Text(
                      'Explorer',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
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
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
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
            );
          }
        },
      ),
    );
  }
}
