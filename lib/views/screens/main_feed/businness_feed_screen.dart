import 'package:flutter/material.dart';

class BusinessFeedScreen extends StatefulWidget {
  const BusinessFeedScreen({super.key});

  @override
  State<BusinessFeedScreen> createState() => _BusinessFeedScreenState();
}

class _BusinessFeedScreenState extends State<BusinessFeedScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Business Feed Screen',
              style: TextStyle(
                fontSize: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
