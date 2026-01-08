import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: AppColors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Greeting
              const Text(
                'Hello 👋',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                'Welcome to AyushKalpa',
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.textGrey,
                ),
              ),

              const SizedBox(height: 24),

              // Dashboard cards
              _dashboardCard(
                icon: Icons.person,
                title: 'My Profile',
                subtitle: 'View & edit profile',
              ),
              const SizedBox(height: 16),

              _dashboardCard(
                icon: Icons.event,
                title: 'My Events',
                subtitle: 'Your registered events',
              ),
              const SizedBox(height: 16),

              _dashboardCard(
                icon: Icons.volunteer_activism,
                title: 'Apply as Volunteer',
                subtitle: 'Request volunteer access',
              ),
              const SizedBox(height: 16),

              _dashboardCard(
                icon: Icons.settings,
                title: 'Settings',
                subtitle: 'App preferences',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _dashboardCard({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.greyBorder),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: AppColors.primaryGreen.withOpacity(0.1),
            child: Icon(
              icon,
              color: AppColors.primaryGreen,
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 13,
                    color: AppColors.textGrey,
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios, size: 16),
        ],
      ),
    );
  }
}
