import 'package:flutter/material.dart';

// Core screens
import 'screens/splash_screen.dart';
import 'screens/get_started_screen.dart';
import 'screens/login_screen.dart';

// User signup flow
import 'screens/user_signup_screen.dart';
import 'screens/otp_verification_screen.dart';
import 'screens/user_signup_success_screen.dart';

// Main app screens
import 'screens/home_screen.dart';
import 'screens/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Initial route
      initialRoute: Routes.splash,

      // App routes
      routes: {
        // Core flow
        Routes.splash: (context) => const SplashScreen(),
        Routes.getStarted: (context) => const GetStartedScreen(),
        Routes.login: (context) => const LoginScreen(),

        // User signup flow
        Routes.userSignup: (context) => UserSignupScreen(),
        Routes.otpVerification: (context) =>
            const OTPVerificationScreen(),
        Routes.userSignupSuccess: (context) =>
            const UserSignupSuccessScreen(),

        // Main app
        Routes.home: (context) => const HomeScreen(),
        Routes.dashboard: (context) => const DashboardScreen(),
      },
    );
  }
}

/// Centralized route names (recommended)
class Routes {
  static const String splash = '/';
  static const String getStarted = '/getStarted';
  static const String login = '/login';

  static const String userSignup = '/userSignup';
  static const String otpVerification = '/otpVerification';
  static const String userSignupSuccess = '/userSignupSuccess';

  static const String home = '/home';
  static const String dashboard = '/dashboard';
}
