import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpLoginScreen extends StatelessWidget {
  const SignUpLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF069788),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              height: 200,
              width: 200,
            ),
            Image.asset(
              'assets/zool.png',
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go('/sign_up');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF3B8FF3),
                minimumSize: const Size(600, 100), // width and height
              ),
              child: const Text(
                'Sign Up',
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
            const SizedBox(height: 10), // add spacing between buttons
            ElevatedButton(
              onPressed: () {
                context.go('/login');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF34B1AA),
                minimumSize: const Size(600, 100), // width and height
              ),
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
