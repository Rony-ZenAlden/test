import 'package:chance_app/views/screens/main_feed/businness_feed_screen.dart';
import 'package:chance_app/views/screens/main_feed/public_feed_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainFeedScreen extends StatefulWidget {
  const MainFeedScreen({super.key});

  @override
  State<MainFeedScreen> createState() => _MainFeedScreenState();
}

class _MainFeedScreenState extends State<MainFeedScreen>
    with SingleTickerProviderStateMixin {
  var _currentIndex = 0;
  late TabController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<Widget> _screens = const [
    PublicFeedScreen(),
    BusinessFeedScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text(
                        'CHANCE',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'assets/images/true.jpg',
                        height: 24,
                        width: 24,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.notifications_none_outlined,
                    size: 30,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            DefaultTabController(
              initialIndex: _currentIndex,
              length: 2,
              child: TabBar(
                controller: _pageController,
                unselectedLabelColor: Colors.black87,
                labelColor: Colors.green,
                indicatorColor: Colors.green,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: const [
                  Tab(
                    child: Text(
                      'Public Feed',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Business Feed',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageController,
                children: _screens,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
