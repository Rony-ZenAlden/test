import 'package:chance_app/views/screens/chat_screen.dart';
import 'package:chance_app/views/screens/create_screen.dart';
import 'package:chance_app/views/screens/main_feed_screen.dart';
import 'package:chance_app/views/screens/profile_screen.dart';
import 'package:chance_app/views/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int screensIndex = 0;
  List screensList = const [
    MainFeedScreen(),
    SearchScreen(),
    CreateScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];

  Future<void> helloWorld() async {
    Get.snackbar('Success', 'Hello World');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            screensIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green.shade400,
        unselectedItemColor: Colors.black,
        currentIndex: screensIndex,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
              size: 32,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(
              Icons.search,
              size: 32,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Create',
            icon: Icon(
              Icons.add_box_outlined,
              size: 32,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Chat',
            icon: Icon(
              Icons.chat,
              size: 32,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(
              Icons.account_circle_sharp,
              size: 32,
            ),
          ),
        ],
      ),
      body: screensList[screensIndex],
    );
  }
}
