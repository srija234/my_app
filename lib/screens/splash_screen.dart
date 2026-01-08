import 'dart:async';
import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/getStarted');
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.white, // ✅ pure white background
      body: SafeArea(
        child: Center(
          child: Image.asset(
            'assets/ayushlogo.png',
            width: screenWidth * 0.6, // slightly bigger logo
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
