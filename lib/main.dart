import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'theme/app_theme.dart';
import 'screens/splash_screen.dart';
import 'screens/onboarding_screen.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/signup_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/home/dashboard_screen.dart';

void main() {
  runApp(const ProviderScope(child: InkScratchApp()));
}

class InkScratchApp extends StatelessWidget {
  const InkScratchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ink Scratch',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (_) => const SplashScreen(),
        OnboardingScreen.routeName: (_) => const OnboardingScreen(),
        LoginScreen.routeName: (_) => const LoginScreen(),
        RegisterScreen.routeName: (_) => const RegisterScreen(),
        DashboardScreen.routeName: (_) => const DashboardScreen(),
        HomeScreen.routeName: (_) => const HomeScreen(),
      },
    );
  }
}
