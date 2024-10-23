import 'package:flutter/material.dart';

class NoApiKeyScreen extends StatelessWidget {
  const NoApiKeyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please add your API key in the .env file \n and refresh the app',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
