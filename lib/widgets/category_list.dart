import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  final List<String> categories = const [
    "All news",
    "Business",
    "Politics",
    "Tech",
    "Healthy",
    "Science",
    "Entertainment",
    "World",
    "Nature",
    "International",
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[200],
                foregroundColor: Colors.black,
                shape: StadiumBorder(),
                elevation: 0,
              ),
              child: Text(categories[index]),
            ),
          );
        },
      ),
    );
  }
}
