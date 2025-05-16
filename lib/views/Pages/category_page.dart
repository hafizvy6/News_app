import 'package:flutter/material.dart';
import 'package:news_app/categories/business_page.dart';
import 'package:news_app/categories/culture_page.dart';
import 'package:news_app/categories/health_page.dart';
import 'package:news_app/categories/nature_page.dart';
import 'package:news_app/categories/politics_page.dart';
import 'package:news_app/categories/sports_page.dart';
import 'package:news_app/categories/technology_page.dart';
import 'package:news_app/categories/world_page.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  final List<String> categoryImagesPath = const [
    'assets/Images/Politics.png',
    'assets/Images/Business.png',
    'assets/Images/Culture.png',
    'assets/Images/Health.png',
    'assets/Images/Nature.png',
    'assets/Images/World.png',
    'assets/Images/Sports.png',
    'assets/Images/Technology.png',
  ];

  List<Widget> get categoryPages => const [
    PoliticsPage(),
    BusinessPage(),
    CulturePage(),
    HealthPage(),
    NaturePage(),
    WorldPage(),
    SportsPage(),
    TechPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 0,
          childAspectRatio: 1.4,
          children: List.generate(categoryImagesPath.length, (index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => categoryPages[index]),
                );
              },
              child: Image.asset(categoryImagesPath[index]),
            );
          }),
        ),
      ),
    );
  }
}
