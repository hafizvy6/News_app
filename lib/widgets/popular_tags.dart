import 'package:flutter/material.dart';

class PopularTagsGrid extends StatelessWidget {
  final List<String> tags;

  const PopularTagsGrid({super.key, required this.tags});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Wrap(
        spacing: 5,
        runSpacing: 0,
        children: List.generate(tags.length, (index) {
          return Chip(
            label: Text(
              '#${tags[index]}',
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            backgroundColor: Colors.grey[200],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          );
        }),
      ),
    );
  }
}
