import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';
import 'screens/get_started_screen.dart';
import 'screens/login_screen.dart';
import 'screens/user_signup_screen.dart';
import 'screens/otp_verification_screen.dart';
import 'screens/user_signup_success_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/getStarted': (context) => const GetStartedScreen(),
        '/login': (context) => const LoginScreen(),

        // User signup flow
        '/userSignup': (context) => UserSignupScreen(),
        '/otpVerification': (context) => const OTPVerificationScreen(),
        '/userSignupSuccess': (context) => const UserSignupSuccessScreen(),
      },
    );
  }
}
