import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/model/category_model.dart';
import 'package:newsapp/model/slider_model.dart';
import 'package:newsapp/services/data.dart';
import 'package:newsapp/services/slider_data.dart';
import 'package:newsapp/widgets/category_tile.dart';
import 'package:newsapp/widgets/heading_widget.dart';
import 'package:newsapp/widgets/slider_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CategoryModel> _categories = [];
  List<SliderModel> _slider = [];
  @override
  void initState() {
    _categories = getCategory();
    _slider = getSlider();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('News',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.deepOrange)),
            Text('App')
          ],
        ),
      ),
      body: Column(
        children: [
          _buildCategorySection(),
          HeadingWidget(
            headingText: 'Breaking News!',
            onTap: () {},
          ),
          _buildSliderSection(size),
          HeadingWidget(
            headingText: 'Trending News!',
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildSliderSection(Size size) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: CarouselSlider.builder(
        itemCount: _slider.length,
        itemBuilder: (context, index, realIndex) {
          return SliderWidget(
            image: _slider[index].sliderImage!,
            text: _slider[index].sliderText!,
          );
        },
        options: CarouselOptions(
          aspectRatio: 16 / 9,
          initialPage: 0,
          enableInfiniteScroll: false,
          reverse: false,
          viewportFraction: 0.8,
          autoPlay: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayInterval: Duration(seconds: 5),
          autoPlayCurve: Curves.fastOutSlowIn,
        ),
      ),
    );
  }

  Widget _buildCategorySection() {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        itemCount: _categories.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return CategoryTile(
              image: _categories[index].image!,
              categoryName: _categories[index].categoryName!);
        },
      ),
    );
  }
}
