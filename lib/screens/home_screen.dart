import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import 'dashboard_screen.dart'; // ✅ ADD THIS

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,

      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        title: const Text(
          'Hello! Sai Kumar',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: const [
          Icon(Icons.menu),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Banner placeholder
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Icon(Icons.image, size: 60, color: Colors.grey),
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                'Up Coming Events',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 12),

              _eventCard('Food Event'),
              _eventCard('Education Event'),
              _eventCard('Sri Sathya Sai Baba Birthday'),
            ],
          ),
        ),
      ),

      // ✅ FIXED Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: AppColors.primaryGreen,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if (index == 2) {
            // 👉 Profile → Dashboard (WORKING)
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DashboardScreen(),
              ),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  static Widget _eventCard(String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.greyBorder),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.image, color: Colors.grey),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 6),
                SizedBox(
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {
                      // UI only
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding:
                          const EdgeInsets.symmetric(horizontal: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: const Text(
                      'Register',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),

          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {
              // UI only
            },
          ),
        ],
      ),
    );
  }
}
