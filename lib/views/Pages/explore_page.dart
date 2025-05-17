import 'package:flutter/material.dart';
import 'package:news_app/widgets/latest_news.dart';
import 'package:news_app/widgets/popular_tags.dart';
import 'package:news_app/widgets/recomendation_topic.dart';
import 'package:news_app/widgets/search_bar.dart';

final List<String> tags = [
  'Politics',
  'AI',
  'Science',
  'World',
  'Health',
  'Gaming',
  'Finance',
  'Tech',
  'Crypto',
  'Mining',
];

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          SearchBarWidget(),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 25, top: 70),
              child: Text(
                'Popular Tags',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 5, top: 90),
              child: PopularTagsGrid(tags: tags),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 250),
              child: Container(height: 3, width: 400, color: Color(0xfff4f4f4)),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(height: 3, width: 400, color: Color(0xfff4f4f4)),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 260),
              child: Text(
                'Latest News',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 475),
              child: Text(
                'Recomendation Topic',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 300),
              child: LatestNewsSlider(),
            ),
          ),
          Positioned(
            bottom: 190,
            child: Container(height: 3, width: 400, color: Color(0xfff4f4f4)),
          ),

          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 500),
              child: RecomendationTopic(),
            ),
          ),
        ],
      ),
    );
  }
}
