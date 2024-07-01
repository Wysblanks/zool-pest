import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; // Ensure to import go_router for context.go

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/getstarted.png'),
            const SizedBox(height: 20),
            const Text(
              'Protect Your Home\nWelcome to Zool Pest Control',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 45,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 600,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: ElevatedButton(
                onPressed: () {
                  // Use GoRouter to navigate
                  context.go('/sign_up_login_screen');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF34B1AA),
                  padding: const EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  elevation: 0,
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
