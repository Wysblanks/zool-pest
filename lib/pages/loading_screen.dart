// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    // Example of navigation after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      // Use GoRouter to navigate
      context.go('/get_started');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              alignment: Alignment.center,
              child: Image.asset(
                'assets/logo.png',
                height: 200,
                width: 200,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'ZOOL PEST CONTROL\nTHE ULTIMATE RESPONSE TO YOUR PEST CONTROL PROBLEM.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
