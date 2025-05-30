import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SearchBar(
          backgroundColor: WidgetStateProperty.all(Colors.grey[200]),
          leading: const Icon(Icons.search),
          elevation: WidgetStatePropertyAll(1),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
          padding: WidgetStateProperty.all(
            EdgeInsets.symmetric(horizontal: 16.0),
          ),
        ),
      ),
    );
  }
}
