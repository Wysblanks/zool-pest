import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zool/pages/get_started_screen.dart';
import 'package:zool/pages/loading_screen.dart';
import 'pages/sign_up_page.dart';
import 'pages/login_page.dart';
import 'pages/sign_up_login_screen.dart';

void main() {
  runApp(const ZoolPestApp());
}

class ZoolPestApp extends StatelessWidget {
  const ZoolPestApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      initialLocation: '/',
      errorPageBuilder: (context, state) => const MaterialPage<void>(
        child: Scaffold(
          body: Center(
            child: Text('Oops! Something went wrong.'),
          ),
        ),
      ),
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const LoadingScreen(),
        ),
        GoRoute(
          path: '/get_started',
          builder: (context, state) => const GetStartedScreen(),
        ),
        GoRoute(
          path: '/sign_up_login_screen',
          builder: (context, state) => const SignUpLoginScreen(),
        ),
        GoRoute(
          path: '/sign_up',
          builder: (context, state) => const SignUpPage(),
        ),
        GoRoute(
          path: '/login',
          builder: (context, state) => const LoginPage(),
        ),
      ],
    );

    return MaterialApp.router(
      title: 'Zool Pest Control',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      debugShowCheckedModeBanner: false, // Disable debug banner
    );
  }
}
