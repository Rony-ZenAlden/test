import 'package:flutter/material.dart';

class BusinessChatScreen extends StatelessWidget {
  const BusinessChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Business Chat Screen',
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
