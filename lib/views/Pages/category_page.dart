import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Catergory Page')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 0,
          childAspectRatio: 1.4,
          children: List.generate(categoryImagesPath.length, (index) {
            return GestureDetector(
              onTap: () {},
              child: Image.asset(categoryImagesPath[index]),
            );
          }),
        ),
      ),
    );
  }
}
