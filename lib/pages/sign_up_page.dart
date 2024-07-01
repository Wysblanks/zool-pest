// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _obscureText1 = true;
  bool _obscureText2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB2DFDB),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Sign Up', style: TextStyle(fontSize: 32)),
              const SizedBox(height: 20),
              _buildTextField(
                labelText: 'Full Name',
                prefixIcon: Icons.person,
              ),
              const SizedBox(height: 10),
              _buildTextField(
                labelText: 'Email',
                prefixIcon: Icons.email,
              ),
              const SizedBox(height: 10),
              _buildTextField(
                labelText: 'Contact Person',
                prefixIcon: Icons.contact_phone,
              ),
              const SizedBox(height: 10),
              _buildPasswordField(
                labelText: 'Password',
                obscureText: _obscureText1,
                onToggle: () {
                  setState(() {
                    _obscureText1 = !_obscureText1;
                  });
                },
              ),
              const SizedBox(height: 10),
              _buildPasswordField(
                labelText: 'Confirm Password',
                obscureText: _obscureText2,
                onToggle: () {
                  setState(() {
                    _obscureText2 = !_obscureText2;
                  });
                },
              ),
              const Text(
                'By signing you agree to ourTerms of Use and Privacy Policy',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle sign up
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3B8FF3),
                  fixedSize: const Size(
                      600, 80), // Set fixed width and height for the button
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  context.go('/login');
                },
                child: const Text('Already have an account? Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
      {required String labelText, required IconData prefixIcon}) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 600, // Adjust the max width as needed
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: Icon(prefixIcon),
          border: const OutlineInputBorder(),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordField({
    required String labelText,
    required bool obscureText,
    required VoidCallback onToggle,
  }) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 600, // Adjust the max width as needed
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: const Icon(Icons.lock),
          suffixIcon: IconButton(
            icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
            onPressed: onToggle,
          ),
          border: const OutlineInputBorder(),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
