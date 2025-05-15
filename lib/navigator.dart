import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/providers/providers.dart';
import 'package:news_app/widgets/navigation_bar.dart';
import 'package:news_app/views/Pages/home_page.dart';
import 'package:news_app/views/Pages/explore_page.dart';
import 'package:news_app/views/Pages/category_page.dart';
import 'package:news_app/views/Pages/profile_page.dart';

class RootNavigator extends ConsumerWidget {
  const RootNavigator({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(bottomNavIndexProvider);

    final List<Widget> pages = [
      HomePage(),
      ExplorePage(),
      CategoryPage(),
      ProfilePage(),
    ];

    return Scaffold(
      body: IndexedStack(index: selectedIndex, children: pages),
      bottomNavigationBar: AppBottomNavigationBar(),
    );
  }
}
