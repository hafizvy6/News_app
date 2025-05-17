import 'package:flutter/material.dart';
import 'package:news_app/widgets/breaking_news.dart';
import 'package:news_app/widgets/category_list.dart';
import 'package:news_app/widgets/popular_redactions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/Images/APP_logo1.png', height: 40),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications, color: Colors.orange),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              children: [const CategoryList(), const SizedBox(height: 1150)],
            ),
          ),
          const Positioned(
            top: 55,
            right: 0,
            left: 20,
            child: Text(
              'Breaking News:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          const Positioned(
            top: 85,
            right: 0,
            left: 0,
            child: BreakingNewsSlider(),
          ),
          const Positioned(
            bottom: 70,
            right: 20,
            left: 30,
            child: Text(
              'Popular Redactions',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),

          const Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Column(children: [PopularRedactions()]),
          ),
        ],
      ),
    );
  }
}
