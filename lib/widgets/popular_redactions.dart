import 'package:flutter/material.dart';

class PopularRedactions extends StatelessWidget {
  const PopularRedactions({super.key});
  final List<String> imagePaths = const [
    'assets/Images/CNN_logo.png',
    'assets/Images/BBC_logo.png',
    'assets/Images/MSN_logo.png',
    'assets/Images/CNBC.png',
    'assets/Images/FOX_logo.png',
    'assets/Images/ABC_logo.png',
    'assets/Images/KJ_logo.png',
    'assets/Images/NDTV_logo.png',
    'assets/Images/ZEENEWS_logo.png',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return Container(
            width: 45,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(imagePaths[index], fit: BoxFit.cover),
            ),
          );
        },
      ),
    );
  }
}
