import 'package:flutter/material.dart';
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
              icon: Icon(Icons.notifications, color: Colors.orange),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(children: [CategoryList(), SizedBox(height: 1150)]),
          ),
          Positioned(
            bottom: 70,
            right: 20,
            left: 30,
            child: Text(
              'Popular Redactions',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),

          Positioned(
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
