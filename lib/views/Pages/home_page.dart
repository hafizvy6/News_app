import 'package:flutter/material.dart';

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
            Image.asset('assets/Images/APP_logo.png', height: 30),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications, color: Colors.orange),
            ),
          ],
        ),
      ),
      body: Center(child: Text('Home Page')),
    );
  }
}
