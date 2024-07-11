import 'package:chance_app/controllers/image_controller.dart';
import 'package:chance_app/views/screens/create_post/business_chat_screen.dart';
import 'package:chance_app/views/screens/create_post/public_chat_Screen.dart';
import 'package:flutter/material.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> with SingleTickerProviderStateMixin{

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
    PublicChatScreen(),
    BusinessChatScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green.shade400,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
              ),
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                child: Text(
                  'Post',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          DefaultTabController(
            initialIndex: _currentIndex,
            length: 2,
            child: TabBar(
              controller: _pageController,
              unselectedLabelColor: Colors.black87,
              labelColor: Colors.green,
              indicator: const UnderlineTabIndicator(
                borderSide: BorderSide.none,
              ),
              tabs: [
                Tab(
                  child: Container(
                    height: 36,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.green.shade400,
                    ),
                    child: const Center(
                      child: Text(
                        'Public',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    height: 36,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      border: Border.all(),
                    ),
                    child: const Center(
                      child: Text(
                        'Business',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                        ),
                      ),
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
    );
  }
}
